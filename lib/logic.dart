import 'package:sweet/data/count_data.dart';

class Logic {
  CountData _countData = const CountData(count: 0, countUp: 0, countDown: 0);

  get countData => _countData;

  void countAdd() {
    _countData = _countData.copyWith(
      count: _countData.count + 1,
      countUp: _countData.countUp + 1,
    );
  }

  void countDecrease() {
    _countData = _countData.copyWith(
        count: _countData.count - 1, countDown: _countData.countDown + 1);
  }
}

///TimeZone 取得して２４時間でリセットおよび保存機能を実施したい
