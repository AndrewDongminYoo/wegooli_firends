// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [k80_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K80Model extends Equatable {
  K80Model();

  K80Model copyWith() {
    return K80Model();
  }

  @override
  List<Object?> get props => [];
}
