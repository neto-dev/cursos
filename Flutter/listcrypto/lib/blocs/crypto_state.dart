import 'package:listcrypto/models/coin_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class CryptoState {
  const CryptoState();

  @override
  List<Object> get props => [];
}

// Initial state
class CryptoEmpty extends CryptoState {}

// Fetching coins
class CryptoLoading extends CryptoState {}

// Retrived coins
class CryptoLoaded extends CryptoState {
  final List<Coin> coins;

  const CryptoLoaded({this.coins});

  @override
  String toString() => 'CryptoLoades { coins: $coins}';
}

// API Request Error
class CryptoError extends CryptoState {}
