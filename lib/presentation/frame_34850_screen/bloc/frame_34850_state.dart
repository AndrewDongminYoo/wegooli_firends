// ignore_for_file: must_be_immutable

part of 'frame_34850_bloc.dart';

/// Represents the state of Frame34850 in the application.
class Frame34850State extends Equatable {
  Frame34850State({
    this.totalAgreement = false,
    this.computer = false,
    this.frame34850ModelObj,
  });

  Frame34850Model? frame34850ModelObj;

  bool totalAgreement;

  bool computer;

  @override
  List<Object?> get props => [
        totalAgreement,
        computer,
        frame34850ModelObj,
      ];
  Frame34850State copyWith({
    bool? totalAgreement,
    bool? computer,
    Frame34850Model? frame34850ModelObj,
  }) {
    return Frame34850State(
      totalAgreement: totalAgreement ?? this.totalAgreement,
      computer: computer ?? this.computer,
      frame34850ModelObj: frame34850ModelObj ?? this.frame34850ModelObj,
    );
  }
}
