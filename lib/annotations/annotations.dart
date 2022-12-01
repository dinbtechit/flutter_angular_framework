@GlobalQuantifyMetaCapability(Injectable, Reflector())
@GlobalQuantifyMetaCapability(Component, Reflector())
import 'package:reflectable/reflectable.dart';

class Reflector extends Reflectable {
  const Reflector()
      : super(
            newInstanceCapability,
            declarationsCapability,
            invokingCapability,
            typeCapability,
            typeRelationsCapability,
            libraryCapability,
            metadataCapability);
}

class Injectable {
  final String name;
  final Scope scope;
  final Provider? provider;

  const Injectable({this.name = '', this.scope = Scope.factory, this.provider});
}

class Component {
  final Provider? provider;

  const Component({this.provider});
}

class MultiProvider {
  final List<Provider> providers;
  const MultiProvider(this.providers);
}

class Provider {
  final Type provide;
  final Type? useClass;
  final Object? useValue;
  final Object? Function()? usefactory;

  const Provider(
      {required this.provide, this.useClass, this.useValue, this.usefactory});
}

enum Scope { factory, singleton, lazySingleton }
