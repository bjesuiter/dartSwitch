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
