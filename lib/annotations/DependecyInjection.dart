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
