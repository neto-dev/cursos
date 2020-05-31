import 'package:listcrypto/models/coin_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class CryptoEvent {
  const CryptoEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends CryptoEvent {}

class RefreshCoins extends CryptoEvent {}

class LoadMoreCoins extends CryptoEvent {
  final List<Coin> coins;

  const LoadMoreCoins({this.coins});

  @override
  List<Object> get props => [coins];

  @override
  String toString() => 'LoadMoreCoins { coins: $coins}';
}
