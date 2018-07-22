import 'sample_locator.dart' as _i1;
import 'sample_module.dart' as _i2;
import 'dart:async' as _i3;
import '../employee.dart' as _i4;
import '../name.dart' as _i5;

class SampleLocator$Injector implements _i1.SampleLocator {
  SampleLocator$Injector._(this._sampleModule);

  final _i2.SampleModule _sampleModule;

  static _i3.Future<_i1.SampleLocator> create(
      _i2.SampleModule sampleModule) async {
    final injector = new SampleLocator$Injector._(sampleModule);

    return injector;
  }

  _i4.Employee _createEmployee() =>
      _sampleModule.provideEmployee(_createName());
  _i5.Name _createName() => _sampleModule.provideName();
  @override
  _i4.Employee getEmployee() => _createEmployee();
}
