// ignore_for_file: must_be_immutable

part of 'payment_method_bloc.dart';

/// Represents the state of PaymentMethod in the application.
class PaymentMethodState extends Equatable {
  PaymentMethodState({
    this.creditCardNumberController,
    this.creditCardNumberController1,
    this.paymentMethodModelObj,
  });

  TextEditingController? creditCardNumberController;

  TextEditingController? creditCardNumberController1;

  PaymentMethodModel? paymentMethodModelObj;

  @override
  List<Object?> get props => [
        creditCardNumberController,
        creditCardNumberController1,
        paymentMethodModelObj,
      ];
  PaymentMethodState copyWith({
    TextEditingController? creditCardNumberController,
    TextEditingController? creditCardNumberController1,
    PaymentMethodModel? paymentMethodModelObj,
  }) {
    return PaymentMethodState(
      creditCardNumberController:
          creditCardNumberController ?? this.creditCardNumberController,
      creditCardNumberController1:
          creditCardNumberController1 ?? this.creditCardNumberController1,
      paymentMethodModelObj:
          paymentMethodModelObj ?? this.paymentMethodModelObj,
    );
  }
}
