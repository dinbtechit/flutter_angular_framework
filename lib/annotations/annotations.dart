@GlobalQuantifyMetaCapability(Injectable, Reflector())
import 'package:reflectable/reflectable.dart';

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
