// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpFormField extends StatefulWidget {
  const OtpFormField({
    super.key,
    required this.length,
    required this.callBack,
  });
  final int length;
  final Function(String) callBack;
  @override
  State<OtpFormField> createState() => _OtpFormFieldState();
}

class _OtpFormFieldState extends State<OtpFormField> {
  List<TextEditingController> _pins = [];

  @override
  void initState() {
    _pins = List.generate(widget.length, (index) => TextEditingController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: RawKeyboardListener(
        focusNode: FocusNode(canRequestFocus: false),
        onKey: (event) {
          if (event.isKeyPressed(LogicalKeyboardKey.backspace)) {
            FocusScope.of(context).previousFocus();
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _pins.map((pin) => PinCodeWrapper(pin: pin)).toList(),
        ),
      ),
    );
  }
}

class PinCodeWrapper extends StatelessWidget {
  const PinCodeWrapper({
    super.key,
    required TextEditingController pin,
  }) : controller = pin;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: PinCodeInput(pin: controller),
    );
  }
}

class PinCodeInput extends StatelessWidget {
  const PinCodeInput({
    super.key,
    required TextEditingController pin,
  }) : controller = pin;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      controller: controller,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
      ],
      onSaved: (pin1) {},
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      },
      keyboardType: TextInputType.number,
      maxLength: 1,
      decoration: const InputDecoration(counterText: ''),
      textAlign: TextAlign.center,
    );
  }
}
