import 'package:flutter/material.dart';

import '../annotations/annotations.dart';
import '../services/services.dart';

@Component()
class MyWidgetComp extends StatelessWidget {
  late ServiceA serviceA;
  late ServiceB serviceB;
  late ServiceC serviceC;

  MyWidgetComp(
      {required this.serviceA,
        required this.serviceB,
        required this.serviceC,
        super.key});

  @override
  Widget build(BuildContext context) {
    return Text('From injection, Hot reload!!!, ${serviceC.serviceCall()}');
  }
}