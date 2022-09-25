# dartSwitch
A little dart library for wrapping big "if - if else" blocks in a Switch..Case structure.
This is mainly for learning purposes of me.
I know, it's somehow stupid, but maybe someone has a use-case for this.
 At least with some additions :)

--- 

## Update: Archival on 2022-09-25 

This repo was for purely academic purposes and I've no interest in maintaining it. 
If someone is interested, it can be forked freely.

--- 

## Usage
I think this has a really obvious usage. Create a new __Switch__ object and set __Case__ callbacks
with the dart 'do-with-object' operator (..).
The __Case__ method gets a condition as lambda returning a boolean or a boolean as first parameter
and a callback to execute as the second.
If you want to run anything in case no __Case__ block is executed, assign a __Default__ callback.
You can only assign one __Default__ callback.

## Example
```
var i = 5;

  Condition cond = () => i < 15;
  Function doe = () => print("i smaller than 15");

  new Switch()
    ..Case(cond, doe)
    ..Case(() => i < 10, () => print("i smaller than 10"))
    ..Case(i > 15, () => print("This callback won't run"))
    ..Default(
        () => print("This callback will run when no case block was executed"));
```

## Output

```
i kleiner 15
i kleiner 10
```
