// ignore_for_file: must_be_immutable

part of 'frame_466_bloc.dart';

/// Represents the state of Frame466 in the application.
class Frame466State extends Equatable {
  Frame466State({
    this.totalAgreement = false,
    this.tf = false,
    this.tf1 = false,
    this.tf2 = false,
    this.tf3 = false,
    this.tf4 = false,
    this.frame466ModelObj,
  });

  Frame466Model? frame466ModelObj;

  bool totalAgreement;

  bool tf;

  bool tf1;

  bool tf2;

  bool tf3;

  bool tf4;

  @override
  List<Object?> get props => [
        totalAgreement,
        tf,
        tf1,
        tf2,
        tf3,
        tf4,
        frame466ModelObj,
      ];
  Frame466State copyWith({
    bool? totalAgreement,
    bool? tf,
    bool? tf1,
    bool? tf2,
    bool? tf3,
    bool? tf4,
    Frame466Model? frame466ModelObj,
  }) {
    return Frame466State(
      totalAgreement: totalAgreement ?? this.totalAgreement,
      tf: tf ?? this.tf,
      tf1: tf1 ?? this.tf1,
      tf2: tf2 ?? this.tf2,
      tf3: tf3 ?? this.tf3,
      tf4: tf4 ?? this.tf4,
      frame466ModelObj: frame466ModelObj ?? this.frame466ModelObj,
    );
  }
}
