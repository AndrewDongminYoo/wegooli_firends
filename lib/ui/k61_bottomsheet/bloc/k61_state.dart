// ignore_for_file: must_be_immutable

part of 'k61_bloc.dart';

/// Represents the state of K61 in the application.
class K61State extends Equatable {
  K61State({
    this.totalAgreement = false,
    this.serviceAgreemen = false,
    this.privacyAgreemen = false,
    this.rentalAgreement = false,
    this.locationAgreeme = false,
    this.vehicleAgreemen = false,
    this.marketingAgreem = false,
    this.k61ModelObj,
  });

  K61Model? k61ModelObj;

  bool totalAgreement;

  bool serviceAgreemen;

  bool privacyAgreemen;

  bool rentalAgreement;

  bool locationAgreeme;

  bool vehicleAgreemen;

  bool marketingAgreem;

  @override
  List<Object?> get props => [
        totalAgreement,
        serviceAgreemen,
        privacyAgreemen,
        rentalAgreement,
        locationAgreeme,
        vehicleAgreemen,
        marketingAgreem,
        k61ModelObj,
      ];
  K61State copyWith({
    bool? totalAgreement,
    bool? serviceAgreemen,
    bool? privacyAgreemen,
    bool? rentalAgreement,
    bool? locationAgreeme,
    bool? vehicleAgreemen,
    bool? marketingAgreem,
    K61Model? k61ModelObj,
  }) {
    return K61State(
      totalAgreement: totalAgreement ?? this.totalAgreement,
      serviceAgreemen: serviceAgreemen ?? this.serviceAgreemen,
      privacyAgreemen: privacyAgreemen ?? this.privacyAgreemen,
      rentalAgreement: rentalAgreement ?? this.rentalAgreement,
      locationAgreeme: locationAgreeme ?? this.locationAgreeme,
      vehicleAgreemen: vehicleAgreemen ?? this.vehicleAgreemen,
      marketingAgreem: marketingAgreem ?? this.marketingAgreem,
      k61ModelObj: k61ModelObj ?? this.k61ModelObj,
    );
  }
}
