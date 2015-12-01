// Copyright (c) 2015, Benjamin Jesuiter. All rights reserved. Use of this source code
// is governed by an Apache2 license that can be found in the LICENSE file.

library dart_switch.switch_class;

typedef bool Condition();

SwitchClass Switch = new SwitchClass();

class SwitchClass {
  void Case(condition, Function execute) {
    if (condition is Condition && condition()) {
      execute();
    } else if (condition is bool && condition) {
      execute();
    }
  }
}
