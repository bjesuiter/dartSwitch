// Copyright (c) 2015, Benjamin Jesuiter. All rights reserved. Use of this source code

// is governed by an Apache2 license that can be found in the LICENSE file.

library dart_switch.switch_class;

typedef bool Condition();

class Switch {

  ///checks whether any case path was executed or not
  bool _anyCaseExecuted = false;

  ///prohibits double assignment of default clause
  bool _defaultAssigned = false;

  void Case(condition, Function execute) {
    if (condition is Condition && condition()) {
      execute();
      _anyCaseExecuted = true;
    } else if (condition is bool && condition) {
      execute();
      _anyCaseExecuted = true;
    }
  }

  void Default(Function execute) {
    if (!_anyCaseExecuted && !_defaultAssigned) {
      execute();
      _defaultAssigned = true;
    } else if (_defaultAssigned) {
      throw new Exception(
          "Only one default path allowed per new Switch.run()");
    }
  }

}
