// Copyright (c) 2015, Benjamin Jesuiter. All rights reserved. Use of this source code
// is governed by an Apache2 license that can be found in the LICENSE file.

library dart_switch.example;

import 'package:dart_switch/dart_switch.dart';

main() {
  var i = 5;

  Condition cond = () => i < 15;
  Function doe = () => print("i kleiner 15");

  Switch
    ..Case(cond, doe)
    ..Case(() => i < 10, () => print("i kleiner 10"))
    ..Case(i > 15, () => print("This callback won't run"));
}
