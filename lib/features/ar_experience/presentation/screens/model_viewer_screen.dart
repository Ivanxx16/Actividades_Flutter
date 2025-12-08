import 'package:flutter/material.dart';

class ModelViewerScreen extends StatelessWidget {
  const ModelViewerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Model Viewer (Web/Android/iOS)')),
      body: const Center(
        child: Text(
          'Aquí implementaremos el Model Viewer',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ),
    );
  }
}
