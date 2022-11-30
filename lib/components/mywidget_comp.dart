import 'package:flutter/material.dart';
import 'package:flutter_reflection_test/annotations/DependecyInjection.dart';

import '../annotations/annotations.dart';
import '../services/services.dart';

@Component()
class MyWidgetComp extends StatelessWidget {
  final ServiceA serviceA;
  final ServiceB serviceB;
  final ServiceC serviceC;

  const MyWidgetComp(
      {required this.serviceA,
      required this.serviceB,
      required this.serviceC,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      useComponent<MyStateFunWidget>(),
    ]);
  }
}

@Component()
class MyStateFunWidget extends StatefulWidget {

  final ServiceA serviceA;
  final ServiceB serviceB;
  const MyStateFunWidget({Key? key, required this.serviceA, required this.serviceB}) : super(key: key);

  @override
  State<MyStateFunWidget> createState() => _MyStateFunWidgetState();
}

class _MyStateFunWidgetState extends State<MyStateFunWidget> {
  @override
  Widget build(BuildContext context) {
    return Text('stateful component ${widget.serviceB.serviceCall()}');
  }
}
