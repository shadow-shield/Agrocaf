// En Pesadas.dart
import 'package:agrocaf/informacion/info.dart';
import 'package:agrocaf/widgets/BottonNavigator.dart';
import 'package:agrocaf/widgets/Datos_Tablapezadas.dart';
import 'package:flutter/material.dart';

class Admin_Pesadas extends StatelessWidget {
  const Admin_Pesadas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BotonNavi(),
      appBar: AppBar(title: Text('Pesadas')),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Info(Texto: 'Pesadas', cargo: 'Admin'),
              TablaPezadas()
            ],
          )
          ),
      ),
    );
  }
}
