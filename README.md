# dartSwitch
A little dart library for wrapping big if - if else blocks in a nicer structure.
I know, it's somehow stupid, but maybe someone has a use-case for this.
 At least with some additions :)

## Example
```
var i = 5;

  Condition cond = () => i < 15;
  Function doe = () => print("i kleiner 15");

  Switch
    ..Case(cond, doe)
    ..Case(() => i < 10, () => print("i kleiner 10"))
    ..Case(i > 15, () => print("This callback won't run"));
```

## Output

```
i kleiner 15
i kleiner 10
```
