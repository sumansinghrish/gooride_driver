// ignore_for_file: must_be_immutable

part of 'my_account_bloc.dart';

/// Represents the state of MyAccount in the application.
class MyAccountState extends Equatable {
  MyAccountState({
    this.nameController,
    this.emailController,
    this.myAccountModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? emailController;

  MyAccountModel? myAccountModelObj;

  @override
  List<Object?> get props => [
        nameController,
        emailController,
        myAccountModelObj,
      ];
  MyAccountState copyWith({
    TextEditingController? nameController,
    TextEditingController? emailController,
    MyAccountModel? myAccountModelObj,
  }) {
    return MyAccountState(
      nameController: nameController ?? this.nameController,
      emailController: emailController ?? this.emailController,
      myAccountModelObj: myAccountModelObj ?? this.myAccountModelObj,
    );
  }
}
