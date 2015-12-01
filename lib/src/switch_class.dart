library dart_switch.switch_class;

typedef bool Condition();

SwitchClass Switch = new SwitchClass();

class SwitchClass {

  void Case(Condition condition, Function execute) {
    if (condition() == true) {
      execute();
    }
  }
}
