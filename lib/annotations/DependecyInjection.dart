import 'package:flutter/material.dart';
import 'package:reflectable/mirrors.dart';

import '../main.reflectable.dart';
import 'annotations.dart';

T? inject<T extends Object>({String? byName}) {
  if (byName != null) {
    return DependencyInjection.objectsForDI.entries
        .toList()
        .firstWhere(
            (element) => element.key.toLowerCase() == byName.toLowerCase())
        .value as T;
  }

  return DependencyInjection.objectsForDI.entries
      .toList()
      .firstWhere((element) => element.value is T)
      .value as T;
}

T? useComponent<T>({Key? key}) {
  var widget = const Reflector().annotatedClasses.firstWhere(
      (element) =>
          element.metadata.isNotEmpty &&
          element.metadata[0].runtimeType.toString() == 'Component',
      orElse: null);
  if (widget == null) return null;
  var constructor = widget.declarations[widget.simpleName] as MethodMirror;
  Map<Symbol, dynamic> contructorInjectArgs = {};
  for (var element in constructor.parameters) {
    try {
      if ( element.type.metadata.isNotEmpty &&
          element.type.metadata[0] is Injectable) {
        print(element.type.metadata[0]);
        var injectableClassMirror =
        const Reflector().annotatedClasses.firstWhere((subElement) {
          return subElement.simpleName.toLowerCase() ==
              element.simpleName.toLowerCase();
        }, orElse: null);
        if (injectableClassMirror == null) continue;
        contructorInjectArgs.putIfAbsent(Symbol(element.simpleName),
                () => injectableClassMirror.newInstance('', []));
      }
    } on Error catch (e) {
      continue;
    }
  }
  if (key != null) {
    contructorInjectArgs.addAll({#key: key});
  }
  print(contructorInjectArgs);
  return widget.newInstance('', [], contructorInjectArgs) as T;
}

class DependencyInjection {
  static Map<String, Object?> objectsForDI = {};

  DependencyInjection() {
    initializeReflectable();
    var injectable = const Reflector();
    for (var injectableClassAnnotation in injectable.annotatedClasses) {
      for (var eachInjectable in injectableClassAnnotation.metadata) {
        if (eachInjectable is! Injectable) continue;

        String injectableName = eachInjectable.name == ''
            ? injectableClassAnnotation.simpleName
            : eachInjectable.name;
        dynamic injectableObject =
            injectableClassAnnotation.newInstance('', []);
        objectsForDI.putIfAbsent(injectableName, () => injectableObject);
      }
    }
  }
}
