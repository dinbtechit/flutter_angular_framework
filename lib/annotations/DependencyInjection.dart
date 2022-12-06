import 'package:flutter/material.dart';
import 'package:flutter_reflection_test/main.dart';
import 'package:reflectable/mirrors.dart';
import 'package:collection/collection.dart';

import '../main.reflectable.dart';
import 'annotations.dart';

class DependencyInjection {
  static Map<String, Object?> objectsForDI = {};

  DependencyInjection() {
    initializeReflectable();
    var injectable = const Reflector();
    for (var injectableClassAnnotation in injectable.annotatedClasses) {
      for (var eachInjectable in injectableClassAnnotation.metadata) {
        if (eachInjectable is! Injectable) continue;

        String injectableName = eachInjectable.name ?? injectableClassAnnotation.simpleName;
        dynamic injectableObject =
            injectableClassAnnotation.newInstance('', []);
        objectsForDI.putIfAbsent(injectableName, () => injectableObject);
      }
    }
  }
}

/// Inject helper
/// Can be used in class that are annotated with @component.
T inject<T extends Object>({String? byName}) {
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

/// useComponent helper
/// Injects the component object
T useComponent<T extends Widget>({Key? key}) {
  var reflector = const Reflector();
  var widget = reflector.reflectType(T) as ClassMirror?;
  if (widget != null) {
    var constructor = widget.declarations[widget.simpleName] as MethodMirror;
    Map<Symbol, dynamic> contructorInjectArgs = {};

    for (var element in constructor.parameters) {
      try {
        if ( element.type.metadata.isNotEmpty &&
            element.type.metadata[0] is Injectable) {
          contructorInjectArgs.putIfAbsent(Symbol(element.simpleName),
                  () => inject(byName: element.simpleName));
        }
      } on Error catch (_) {
        continue;
      }
    }
    if (key != null) {
      contructorInjectArgs.addAll({#key: key});
    }
    var componentInstance = widget.newInstance('', [], contructorInjectArgs);
    if (componentInstance is T) return componentInstance;
  }
  throw Exception('useComponent<${T.toString()}> is not annotated as `@Component()`');
}

