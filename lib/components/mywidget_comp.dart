import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_reflection_test/annotations/DependencyInjection.dart';
import 'package:flutter_reflection_test/services/api.service.dart';

import '../annotations/annotations.dart';
import '../services/services.dart';

ApiServiceIF myFactory(ServiceA serviceA, ServiceB serviceB) {
  const env = '';
  if (env == 'dev') {
    return inject<ApiService>();
  }
  return inject<ApiServiceProd>();
}

@Component(provider: [
  Provider(provide: ApiServiceIF, usefactory: myFactory),
])
class Widget1 extends StatelessWidget {
  final ServiceA serviceA;
  final ServiceB serviceB;
  final ServiceC serviceC;

  const Widget1(
      {required this.serviceA,
      required this.serviceB,
      required this.serviceC,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(' Data from Service A:  ${serviceA.count} - ${serviceA.hashCode}'),
      Text(' Data from Service B:  ${serviceB.getText()}'),
      useComponent<Widget2>(),
    ]);
  }
}

@Component(provider: [
  Provider(provide: ServiceA, useClass: ApiServiceProd),
])
class Widget2 extends StatefulWidget {
  final ServiceA serviceA;
  final ServiceB serviceB;

  const Widget2({Key? key, required this.serviceA, required this.serviceB})
      : super(key: key);

  @override
  State<Widget2> createState() => _Widget2State();
}

class _Widget2State extends State<Widget2> {

  @override
  Widget build(BuildContext context) {
    return Text('stateful component ${widget.serviceB.getText()}');
  }

  @override
  void dispose() {
    super.dispose();
  }
}

extension on ServiceA {
  autoDispose() {}
}

extension on ServiceA {
  autoDispose() {}
}
