
import 'package:flutter_app01/src/employee.dart';
import 'package:flutter_app01/src/name.dart';
import 'package:inject/inject.dart';

@module
class SampleModule {

  @provide
  Employee provideEmployee(Name name) => new Employee(name);

  @provide
  Name provideName() => Name("test1");
}
