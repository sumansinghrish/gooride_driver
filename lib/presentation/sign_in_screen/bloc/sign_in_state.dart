// ignore_for_file: must_be_immutable

part of 'sign_in_bloc.dart';

/// Represents the state of SignIn in the application.
class SignInState extends Equatable {
  SignInState({
    this.phoneNumberController,
    this.selectedCountry,
    this.signInModelObj,
  });

  TextEditingController? phoneNumberController;

  SignInModel? signInModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        selectedCountry,
        signInModelObj,
      ];
  SignInState copyWith({
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    SignInModel? signInModelObj,
  }) {
    return SignInState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      signInModelObj: signInModelObj ?? this.signInModelObj,
    );
  }
}
