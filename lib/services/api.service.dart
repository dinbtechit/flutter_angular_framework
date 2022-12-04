import 'package:flutter_reflection_test/annotations/DependencyInjection.dart';
import 'package:flutter_reflection_test/annotations/annotations.dart';
import 'package:flutter_reflection_test/services/services.dart';

abstract class ApiServiceIF {
  void handle();
}

@Injectable(name: 'local-ApiService', scope: Scope.singleton)
class ApiService implements ApiServiceIF {
  @override
  handle() {
    print('This is a local service');
  }
}

ServiceA myFactory() {
  return inject<ServiceA>();
}

@Injectable(
  name: 'prod-ApiService',
  scope: Scope.lazySingleton,
  provider: [
    Provider(provide: ServiceA, usefactory: myFactory),

  ],
)
class ApiServiceProd implements ApiServiceIF {
  @override
  handle() {
    print('This is a prod service');
  }
}
