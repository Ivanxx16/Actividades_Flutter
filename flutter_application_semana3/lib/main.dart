import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_semana3/counter_provider.dart';

void main() {
  // runApp(const MyApp());
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: MyApp(),
    ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App Contador',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const DemoPage(),
    );
  }
}

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Demo setState")),
      body: Center(
        child: Text(
          "Contador: $counter",
          style: const TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}