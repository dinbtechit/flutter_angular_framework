@GlobalQuantifyMetaCapability(Injectable, Reflector())
@GlobalQuantifyMetaCapability(Component, Reflector())
@GlobalQuantifyMetaCapability(Provider, Reflector())
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
  final List<Provider>? provider;

  const Injectable({this.name = '', this.scope = Scope.factory, this.provider});
}

class Component {
  final List<Provider>? provider;

  const Component({this.provider});
}

class Provider<T> {
  final T provide;
  final Type? useClass;
  final Object? useValue;
  final Function? usefactory;
  final List<Type> deps;

  const Provider(
      {required this.provide,
      this.useClass,
      this.useValue,
      this.usefactory,
      this.deps = const []});
}

enum Scope { factory, singleton, lazySingleton }
