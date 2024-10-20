import 'package:agrocaf/informacion/info.dart';
import 'package:agrocaf/widgets/BottonNavigator.dart';
import 'package:flutter/material.dart';

class Admin_Abonos extends StatefulWidget {
  const Admin_Abonos({Key? key}) : super(key: key);

  @override
  State<Admin_Abonos> createState() => _Admin_AbonosState();
}

class _Admin_AbonosState extends State<Admin_Abonos> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BotonNavi(),
      appBar: AppBar(title: Text('Abonos')),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Info(Texto: 'Abonos', cargo: 'Admin')
            ],
          )
          ),
      ),
    );
  }
}