# An experimental Angular Like framework for flutter using [Reflectable](https://pub.dev/packages/reflectable) Package

> Not to get confused with AngularDart. This library uses Angular Concepts for Flutter.

## DO NOT USE THIS IN PRODUCTION.

This framework is built using [Reflectable](https://pub.dev/packages/reflectable) to explore the potential of Reflection. Brings Angular concepts to flutter. Such as `@Component`, `@Injectable` -> Provider etc.

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
    import 'annotations/DependencyInjection.dart';
   
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

1. Ensure you are running build Runner in watch mode:
   ```shell
   flutter pub run build_runner watch
   # or, for straight dart
   dart pub run build_runner watch 
   ```

2. Define Injectables by simply annotating them as `@Injectable`.

   ```dart
   abstract class Service {}
   
   @Injectable()    
   class LocalService implements Service {
     
   }
   
   @Injectable()
   class ProdService implements Service {
   
   }
   ```

3. Annotate your widget with `@Component`
   ```dart
   @Component()
   class Widget1 extends StatelessWidget {
     final ServiceA serviceA;
     final ServiceB serviceB;
     final ServiceC serviceC;
   
     const Widget1(
     {required this.serviceA,
     required this.serviceB,
     required this.serviceC,
     super.key});
   
     @override
     Widget build(BuildContext context) {
      return Column(children: [
           Text(' Data from Service A:  ${serviceA.getText()}'),
           Text(' Data from Service B:  ${serviceB.getText()}'),
           useComponent<Widget2>(),       // <---<< Magic happens here.
      ]);
   }
   }
   
   @Component()
   class Widget2 extends StatefulWidget {
   
     final ServiceA serviceA;
     final ServiceB serviceB;
     const Widget2({Key? key, required this.serviceA, required this.serviceB}) : super(key: key);
   
     @override
     State<Widget2> createState() => _Widget2State();
   }
   
   class _Widget2State extends State<Widget2> {
     @override
     Widget build(BuildContext context) {
       return Text('stateful component ${widget.serviceB.getText()}');
     }
   }
   ```
   > For more complex use cases checkout - [lib/components/mywidget_comp.dart](lib/components/mywidget_comp.dart)
4. To use the "Injectables" in non annotated widgets:
   ```dart
   class MyWidget extends StatlessWidget {
     var localService = inject<LocalService>(); // Instance of localservice
     var prodService = inject<ProdService>(); // Instance of prodservice
     
      // Or you can get the service byName
   
     var localService = inject<Service>(byName: 'LocalService'); // Instance of localservice 
   }
   ```

