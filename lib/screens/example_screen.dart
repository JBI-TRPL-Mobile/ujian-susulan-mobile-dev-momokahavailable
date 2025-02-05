import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen ({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child
      )
    )
  }
}