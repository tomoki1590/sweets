import 'package:flutter_riverpod/flutter_riverpod.dart';

final juiceProvider = Provider<String>((ref) {
  return '清涼飲料水';
});
final JSweetProvider = Provider<String>((ref) {
  return '和菓子';
});
final countProvider1 = StateProvider<int>((ref) => 0);
final countProvider2 = StateProvider<int>((ref) => 0);
final countProvider3 = StateProvider<int>((ref) => 0);
final countProvider4 = StateProvider<int>((ref) => 0);

final howManyProvider = Provider<String>((ref) => '食べた分だけタップしてください');
final FProvider = Provider<String>((ref) => 'assets/drink.png');
