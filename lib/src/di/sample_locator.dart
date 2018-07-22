import 'package:flutter_app01/src/di/sample_module.dart';
import 'package:flutter_app01/src/employee.dart';
import 'package:inject/inject.dart';
import 'sample_locator.inject.dart' as generated;

@Injector(const [SampleModule])
abstract class SampleLocator {

  static create(SampleModule module) => generated.SampleLocator$Injector.create(module);

  @provide
  Employee getEmployee();
}
