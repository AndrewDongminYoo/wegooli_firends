// ignore_for_file: must_be_immutable

part of 'home_page_bloc.dart';

/// Represents the state of HomePage in the application.
class HomePageState extends Equatable {
  HomePageState({this.homePageModelObj});

  HomePageModel? homePageModelObj;

  @override
  List<Object?> get props => [
        homePageModelObj,
      ];
  HomePageState copyWith({HomePageModel? homePageModelObj}) {
    return HomePageState(
      homePageModelObj: homePageModelObj ?? this.homePageModelObj,
    );
  }
}
