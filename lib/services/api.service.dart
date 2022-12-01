import 'package:flutter_reflection_test/annotations/annotations.dart';

@Injectable()
abstract class ApiServiceIF {
  void handle();
}

@Injectable(name: 'local-ApiService')
class ApiService implements ApiServiceIF {
  @override
  handle() {
    print('This is a local service');
  }

}

@Injectable(name: 'prod-ApiService')
class ApiServiceProd implements ApiServiceIF {
  @override
  handle() {
    print('This is a prod service');
  }

}