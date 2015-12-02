# Changelog


### Version 0.2.0
- renamed SwitchClass to Switch (**Note the capital S!**)
- changed usage from
  ```
  Switch
    ..Case()
    ..Case();
  ```
  to
  ```
  new Switch()
    ..Case()
    ..Case()
    ..Default();
  ```

  Parameters of Case() and Default() removed for simplification
- added unit test
- updated example

### Version 0.1.0
- Basic release
- added SwitchClass class
