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
