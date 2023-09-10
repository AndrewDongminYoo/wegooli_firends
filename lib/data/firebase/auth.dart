// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:barcode_widget/barcode_widget.dart';
import 'package:collection/collection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

// 🌎 Project imports:
import '/lib.dart';
import '/main.dart';

extension on AuthMode {
  String get label => this == AuthMode.login ? 'Sign in' : 'Register';
}

/// Entrypoint example for various sign-in flows with Firebase.
class AuthGate extends StatefulWidget {
  // ignore: public_member_api_docs
  const AuthGate({Key? key}) : super(key: key);
  static String? appleAuthorizationCode;
  @override
  State<StatefulWidget> createState() => _AuthGateState();
}

class _AuthGateState extends State<AuthGate> {
  UserController controller = UserController.to;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String error = '';
  String verificationId = '';
  AuthMode mode = AuthMode.login;
  bool isLoading = false;

  void setIsLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  @override
  void initState() {
    super.initState();
    if (withSilentVerificationSMSMFA && !kIsWeb) {
      final messaging = FirebaseMessaging.instance;
      messaging.requestPermission();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SafeArea(
                  child: Form(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 400),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Visibility(
                            visible: error.isNotEmpty,
                            child: MaterialBanner(
                              backgroundColor:
                                  Theme.of(context).colorScheme.error,
                              content: SelectableText(error),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      error = '';
                                    });
                                  },
                                  child: const Text(
                                    'dismiss',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                              contentTextStyle:
                                  const TextStyle(color: Colors.white),
                              padding: const EdgeInsets.all(10),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: isLoading
                                  ? null
                                  : () => _handleMultiFactorException(
                                        _emailAndPassword,
                                      ),
                              child: isLoading
                                  ? const CircularProgressIndicator.adaptive()
                                  : Text(mode.label),
                            ),
                          ),
                          TextButton(
                            onPressed: _resetPassword,
                            child: const Text('Forgot password?'),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future _resetPassword() async {
    String? email;
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actions: [
            TextButton(
              onPressed: () {
                popWithValue(context, true);
              },
              child: const Text('Send'),
            ),
          ],
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Enter your email'),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value) {
                  email = value;
                },
              ),
            ],
          ),
        );
      },
    );

    if (email != null) {
      try {
        await auth.sendPasswordResetEmail(email: email!);
        ScaffoldSnackbar.of(context).show('Password reset email is sent');
      } catch (e) {
        ScaffoldSnackbar.of(context).show('Error resetting');
      }
    }
  }

  Future<void> _handleMultiFactorException(
    Future<void> Function() authFunction,
  ) async {
    setIsLoading();
    try {
      await authFunction();
    } on FirebaseAuthMultiFactorException catch (e) {
      setState(() {
        error = '${e.message}';
      });
      final firstTotpHint = e.resolver.hints
          .firstWhereOrNull((element) => element is TotpMultiFactorInfo);
      if (firstTotpHint != null) {
        final code = await getSmsCodeFromUser(context);
        final assertion = await TotpMultiFactorGenerator.getAssertionForSignIn(
          firstTotpHint.uid,
          code!,
        );
        await e.resolver.resolveSignIn(assertion);
        return;
      }

      final firstPhoneHint = e.resolver.hints
          .firstWhereOrNull((element) => element is PhoneMultiFactorInfo);

      if (firstPhoneHint is! PhoneMultiFactorInfo) {
        return;
      }
      await auth.verifyPhoneNumber(
        multiFactorSession: e.resolver.session,
        multiFactorInfo: firstPhoneHint,
        verificationCompleted: (_) {},
        verificationFailed: print,
        codeSent: (String verificationId, int? resendToken) async {
          final smsCode = await getSmsCodeFromUser(context);
          if (smsCode != null) {
            // Create a PhoneAuthCredential with the code
            final credential = PhoneAuthProvider.credential(
              verificationId: verificationId,
              smsCode: smsCode,
            );
            try {
              await e.resolver.resolveSignIn(
                PhoneMultiFactorGenerator.getAssertion(
                  credential,
                ),
              );
            } on FirebaseAuthException catch (e) {
              print(e.message);
            }
          }
        },
        codeAutoRetrievalTimeout: print,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        error = '${e.message}';
      });
    } catch (e) {
      setState(() {
        error = '$e';
      });
    }
    setIsLoading();
  }

  Future<void> _emailAndPassword() async {
    if (formKey.currentState?.validate() ?? false) {
      if (mode == AuthMode.login) {
        await auth.signInWithEmailAndPassword(
          email: controller.emailAddress.text,
          password: controller.password.text,
        );
      } else if (mode == AuthMode.register) {
        await auth.createUserWithEmailAndPassword(
          email: controller.emailAddress.text,
          password: controller.password.text,
        );
      } else {
        await _phoneAuth();
      }
    }
  }

  Future<void> _phoneAuth() async {
    if (kIsWeb) {
      final confirmationResult =
          await auth.signInWithPhoneNumber(controller.password.text);
      final smsCode = await getSmsCodeFromUser(context);

      if (smsCode != null) {
        await confirmationResult.confirm(smsCode);
      }
    } else {
      await auth.verifyPhoneNumber(
        phoneNumber: controller.password.text,
        verificationCompleted: (_) {},
        verificationFailed: (e) {
          setState(() {
            error = '${e.message}';
          });
        },
        codeSent: (String verificationId, int? resendToken) async {
          final smsCode = await getSmsCodeFromUser(context);

          if (smsCode != null) {
            // Create a PhoneAuthCredential with the code
            final credential = PhoneAuthProvider.credential(
              verificationId: verificationId,
              smsCode: smsCode,
            );

            try {
              // Sign the user in (or link) with the credential
              await auth.signInWithCredential(credential);
            } on FirebaseAuthException catch (e) {
              setState(() {
                error = e.message ?? '';
              });
            }
          }
        },
        codeAutoRetrievalTimeout: (e) {
          setState(() {
            error = e;
          });
        },
      );
    }
  }
}

Future<String?> getSmsCodeFromUser(BuildContext context) async {
  String? smsCode;

  // Update the UI - wait for the user to enter the SMS code
  await showDialog<String>(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: const Text('SMS code:'),
        actions: [
          ElevatedButton(
            onPressed: () {
              popWithValue(context, true);
            },
            child: const Text('Sign in'),
          ),
          OutlinedButton(
            onPressed: () {
              smsCode = null;
              popWithValue(context, false);
            },
            child: const Text('Cancel'),
          ),
        ],
        content: Container(
          padding: const EdgeInsets.all(20),
          child: TextField(
            onChanged: (value) {
              smsCode = value;
            },
            textAlign: TextAlign.center,
            autofocus: true,
          ),
        ),
      );
    },
  );

  return smsCode;
}

Future<String?> getTotpFromUser(
  BuildContext context,
  TotpSecret totpSecret,
) async {
  String? smsCode;

  final qrCodeUrl = await totpSecret.generateQrCodeUrl(
    accountName: FirebaseAuth.instance.currentUser!.email,
    issuer: 'Firebase',
  );

  // Update the UI - wait for the user to enter the SMS code
  await showDialog<String>(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: const Text('TOTP code:'),
        content: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BarcodeWidget(
                barcode: Barcode.qrCode(),
                data: qrCodeUrl,
                width: 150,
                height: 150,
              ),
              TextField(
                onChanged: (value) {
                  smsCode = value;
                },
                textAlign: TextAlign.center,
                autofocus: true,
              ),
              ElevatedButton(
                onPressed: () {
                  totpSecret.openInOtpApp(qrCodeUrl);
                },
                child: const Text('Open in OTP App'),
              ),
            ],
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              popWithValue(context, true);
            },
            child: const Text('Sign in'),
          ),
          OutlinedButton(
            onPressed: () {
              smsCode = null;
              popWithValue(context, false);
            },
            child: const Text('Cancel'),
          ),
        ],
      );
    },
  );
  return smsCode;
}
