import 'package:simple_dart/simple_dart.dart';
import 'package:test/test.dart';

void main() {
  test('bool extension test', () {
    //! OnTrue
    expect(true.onTrue('result'), 'result');
    expect(null.onTrue('result'), null);
    expect(false.onTrue('result'), null);
    //! OnFalse
    expect(false.onFalse('result'), 'result');
    expect(null.onFalse('result'), null);
    expect(true.onFalse('result'), null);
    //! onFalseOrNull
    expect(false.onFalseOrNull('result'), 'result');
    expect(null.onFalseOrNull('result'), 'result');
    expect(true.onFalseOrNull('result'), null);
    //! onTrueOrNull
    expect(false.onTrueOrNull('result'), null);
    expect(null.onTrueOrNull('result'), 'result');
    expect(true.onTrueOrNull('result'), 'result');
  });

  test('duration extensions', () {
    expect(Duration(hours: 16767).format(), 'one year & 11 months');
  });

  test('num extensions', () {
    expect(15.0.noTrailing(), '15');
    expect((15.5).noTrailing(), '15.5');
    expect((15.55).noTrailing(), '15.55');
    expect((15.500005).noTrailing(), '15.500005');
    expect((15.5000050).noTrailing(10), '15.5000050000');
    expect((15.5000050).noTrailing(), '15.500005');
    expect((0.5000050).noTrailing(), '0.500005');
    expect((15.5).noTrailing(2), '15.50');
    expect((15.05).noTrailing(2), '15.05');
    expect(15.5.noTrailing(), '15.5');
  });

  test('iterable extensions', () {
    var list = [DateTime(2000), DateTime(2001), DateTime(2002)];
    expect(list.firstOrDefault(), list[0]);
    expect(list.firstOrDefault((i) => i.year == 2001), list[1]);
    expect(list.firstOrDefault((i) => i.year == 2005), null);

    expect(list.lastOrDefault(), list[2]);
    expect(list.lastOrDefault((i) => i.year == 2001), list[1]);
    expect(list.lastOrDefault((i) => i.year == 2005), null);
  });
}
