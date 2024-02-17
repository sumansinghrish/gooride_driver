// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.emailController,
    this.phoneNumberController,
    this.selectedCountry,
    this.signUpModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  SignUpModel? signUpModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        emailController,
        phoneNumberController,
        selectedCountry,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
