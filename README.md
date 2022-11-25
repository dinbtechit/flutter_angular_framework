# An experimental DI library using [Reflectable](https://pub.dev/packages/reflectable) Package

## DO NOT USE THIS IN PRODUCTION.

This is a Simple Dependency Inject Library created to experiment the potential
of [Reflectable](https://pub.dev/packages/reflectable).

It works very similar to `get_it`+ `injectable` package (but does not support all the
functionalities). 

## Installation:

1. Install Package using CLI
    ```shell
    # Flutter
    flutter pub add reflectable 
    flutter pub add build_runner --dev
    
    # Dart
    dart pub add reflectable 
    dart pub add build_runner --dev
    ```

2. copy `lib\annotations` directory into your project.

3. update `main()` method
    ```dart
    import 'annotations/DependecyInjection.dart';
   
    void main() {
      DependecyInjection();
      ...
    }
    ```
4. Run build Runner in watch mode:
   ```shell
   flutter pub run build_runner watch
   # or, for straight dart
   dart pub run build_runner watch 
   ```

## Usage:

1. Define Injectables by simply annotating them as `@Injectable` also pass in an optional Name.
> When no name is provided it uses the className
```dart
abstract class Service {}

@Injectable()    
class LocalService implements Service {
  
}

@Injectable()
class ProdService implements Service {

}
```
2. Ensure you are running build Runner in watch mode:
   ```shell
   flutter pub run build_runner watch
   # or, for straight dart
   dart pub run build_runner watch 
   ```

3. To use the Injectables. Somewhere in the code. 
For example: flutter
```dart
class MyWidget extends StatlessWidget {
  var localService = getDI<LocalService>(); // Instance of localservice
  var prodService = getDI<ProdService>(); // Instance of prodservice
  
   // Or you can get the service byName

  var localService = getDI<Service>(byName: 'LocalService'); // Instance of localservice 
}
```

