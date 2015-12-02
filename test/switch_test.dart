// Copyright (c) 2015, Benjamin Jesuiter. All rights reserved. Use of this source code

// is governed by an Apache2 license that can be found in the LICENSE file.

library dart_switch.test;

import 'package:dart_switch/dart_switch.dart';
import 'package:test/test.dart';

void main() {
  var i = 5;

  setUp(() {});

  test('Normal switch-case', () {
    bool case1run = false;
    bool case2run = false;
    bool case3run = false;

    Condition cond = () => i < 15;
    Function doe = () => case1run = true;

    new Switch()
      ..Case(cond, doe)
      ..Case(() => i < 10, () => case2run = true)
      ..Case(i > 15, () => case3run = false);

    expect(case1run, isTrue);
    expect(case2run, isTrue);
    expect(case3run, isFalse);
  });

  test('Switch-case with default block', () {
    bool case1run = false;
    bool case2run = false;
    bool defaultRun = false;

    new Switch()
      ..Case(i > 15, () => case1run = true)
      ..Case(i > 20, () => case2run = true)
      ..Default(() => defaultRun = true);

    expect(case1run, isFalse);
    expect(case2run, isFalse);
    expect(defaultRun, isTrue);
  });

  test('Exception on more than one default block', () {
    Switch switchcase = new Switch()
      ..Case(i > 15, () => true)
      ..Case(i > 20, () => true)
      ..Default(() => true);

    expect(()=> switchcase.Default(() => true), throws);
  });
}
