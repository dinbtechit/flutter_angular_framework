import '../annotations/annotations.dart';

@Injectable(
    name: 'ServiceA',
    provider: Provider(
        provide: ServiceA,
        useClass: ServiceB
    )
)
class ServiceA {
  const ServiceA();
  String getText() {
    return "HelloA";
  }

  int getCount(int i) {
    return i;
  }
}

@Injectable(name: 'ServiceB')
class ServiceB {
  String getText() {
    return "HelloB";
  }
}

@Injectable(name: 'ServiceC')
class ServiceC {
  String getText() {
    return "HelloC";
  }
}
