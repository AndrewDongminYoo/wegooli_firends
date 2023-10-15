// ignore_for_file: must_be_immutable

part of 'k51_bloc.dart';

/// Represents the state of K51 in the application.
class K51State extends Equatable {
  K51State({
    this.totalAgreement = false,
    this.tf = false,
    this.tf1 = false,
    this.tf2 = false,
    this.tf3 = false,
    this.tf4 = false,
    this.tf5 = false,
    this.k51ModelObj,
  });

  K51Model? k51ModelObj;

  bool totalAgreement;

  bool tf;

  bool tf1;

  bool tf2;

  bool tf3;

  bool tf4;

  bool tf5;

  @override
  List<Object?> get props => [
        totalAgreement,
        tf,
        tf1,
        tf2,
        tf3,
        tf4,
        tf5,
        k51ModelObj,
      ];
  K51State copyWith({
    bool? totalAgreement,
    bool? tf,
    bool? tf1,
    bool? tf2,
    bool? tf3,
    bool? tf4,
    bool? tf5,
    K51Model? k51ModelObj,
  }) {
    return K51State(
      totalAgreement: totalAgreement ?? this.totalAgreement,
      tf: tf ?? this.tf,
      tf1: tf1 ?? this.tf1,
      tf2: tf2 ?? this.tf2,
      tf3: tf3 ?? this.tf3,
      tf4: tf4 ?? this.tf4,
      tf5: tf5 ?? this.tf5,
      k51ModelObj: k51ModelObj ?? this.k51ModelObj,
    );
  }
}
