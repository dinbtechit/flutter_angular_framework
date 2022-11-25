@GlobalQuantifyMetaCapability(Injectable, Reflector())
import 'package:reflectable/reflectable.dart';

class WidgetReflector extends Reflectable {
  const WidgetReflector()
      : super(
      newInstanceCapability,
      declarationsCapability,
      invokingCapability,
      typeCapability,
      typeRelationsCapability,
      reflectedTypeCapability,
      libraryCapability,
      metadataCapability);

  void Name(String name) {

  }
}


class Reflector extends Reflectable {
  const Reflector()
      : super(newInstanceCapability,
      declarationsCapability,
      invokingCapability,
      typeCapability,
      typeRelationsCapability,
      reflectedTypeCapability,
      libraryCapability,
      metadataCapability);
}


class InjectableReflector extends Reflectable {
  const InjectableReflector()
      : super(newInstanceCapability, declarationsCapability, invokingCapability,
      metadataCapability, typeCapability,libraryCapability);
}

class Injectable {
  final String name;
  final List<dynamic> deps;
  const Injectable({this.name = '', this.deps = const []});
}

class Inject extends Reflectable {
  const Inject()
      : super(newInstanceCapability, declarationsCapability, invokingCapability,
      typeCapability, typeRelationsCapability, reflectedTypeCapability, libraryCapability);
}

const inject = Inject();
