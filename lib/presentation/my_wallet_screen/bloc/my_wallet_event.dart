// ignore_for_file: must_be_immutable

part of 'my_wallet_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyWallet widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyWalletEvent extends Equatable {}

/// Event that is dispatched when the MyWallet widget is first created.
class MyWalletInitialEvent extends MyWalletEvent {
  @override
  List<Object?> get props => [];
}
