library dart_switch.switch_class;

typedef bool Condition();

class Switch {

  static void Case(Condition condition, Function execute) {
    if (condition() == true) {
      execute();
    }
  }
}
