import 'package:flutter/cupertino.dart';

import '../annotations/annotations.dart';

@Injectable(name: 'ServiceA', deps: [ServiceB])
class ServiceA {
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
