import 'package:sweet/logic.dart';
import 'package:test/test.dart';

void main() {
  Logic target = Logic();
  setUp(() async {
    target = Logic();
  });
  test('init', () async {
    expect(target.countData.count, 0);
    expect(target.countData.countUp, 0);
    expect(target.countData.countDown, 0);
  });

  test('countUp', () async {
    target.countAdd();
    expect(target.countData.count, 1);
    expect(target.countData.countUp, 1);
    expect(target.countData.countDown, 0);

    target.countAdd();
    target.countAdd();
    expect(target.countData.count, 3);
    expect(target.countData.countUp, 3);
    expect(target.countData.countDown, 0);
  });

  test('countDecrease', () async {
    target.countDecrease();
    expect(target.countData.count, -1);
    expect(target.countData.countUp, 0);
    expect(target.countData.countDown, 1);

    target.countDecrease();
    target.countDecrease();
    target.countDecrease();
    expect(target.countData.count, -4);
    expect(target.countData.countUp, 0);
    expect(target.countData.countDown, 4);
  });
}
