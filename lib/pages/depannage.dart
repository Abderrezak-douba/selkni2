import 'package:flutter/material.dart';

class depannage extends StatefulWidget {
  const depannage({super.key});

  @override
  State<depannage> createState() => _depannageState();
}

class _depannageState extends State<depannage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('depannage'),
      ),
    );
  }
}
