import '../annotations/annotations.dart';

@Injectable(name: 'ServiceA', deps: [ServiceB])
class ServiceA {
  late ServiceB serviceB;

  String serviceCall() {
    return "HelloA";
  }

  int getCount(int i) {
    return i;
  }
}

@Injectable(name: 'ServiceB')
class ServiceB {
  String serviceCall() {
    return "HelloB";
  }
}

@Injectable(name: 'ServiceC')
class ServiceC {
  String serviceCall() {
    return "HelloC";
  }
}
