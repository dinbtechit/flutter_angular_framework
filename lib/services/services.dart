import '../annotations/annotations.dart';

@Injectable(name: 'ServiceA', provider: [
  Provider(
    provide: ServiceB,
    useClass: ServiceB,
  )
])
class ServiceA {

  int count = 0;

  ServiceA();

  String getText() {
    return "HelloA";
  }

  increment() {
    count++;
  }

  decrement(){
    count--;
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
