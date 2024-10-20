import 'package:agrocaf/informacion/info.dart';
import 'package:flutter/material.dart';

class Temporada extends StatefulWidget {
  const Temporada({super.key});

  @override
  State<Temporada> createState() => _nameState();
}

class _nameState extends State<Temporada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temporada'),
        
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Info(),
          ],
        )),
      ),
    );
  }
}
