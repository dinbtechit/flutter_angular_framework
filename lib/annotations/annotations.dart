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
  final List<Provider>? provider;

  const Injectable({this.name = '', this.scope = Scope.factory, this.provider});
}

class Component {
  final List<Provider>? provider;
  const Component({this.provider});
}



class Provider<T> {
  final Type? useClass;
  final Object? useValue;
  final Function? usefactory;
  final List<Type> deps;

 const Provider(
      {this.useClass, this.useValue, this.usefactory, this.deps = const []});
}

class Factory<T> {
  const Factory(T);
}

enum Scope { factory, singleton, lazySingleton }
