import 'package:flutter/material.dart';
import 'package:flutter_reflection_test/components/mywidget_comp.dart';
import 'package:flutter_reflection_test/services/api.service.dart';
import 'package:flutter_reflection_test/services/services.dart';
import 'annotations/DependencyInjection.dart';

void main() {
  DependencyInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var service = inject<ServiceA>();
  var apiService = inject<ApiServiceIF>(byName: 'prod-apiservice');

  int _counter = 0;

  @override
  void initState() {
    super.initState();
    apiService.handle();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      service.increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            useComponent<Widget1>(),
            Text(
              '${service.getCount(_counter)}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
