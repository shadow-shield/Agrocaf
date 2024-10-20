import 'package:agrocaf/informacion/info.dart';
import 'package:agrocaf/widgets/BottonNavigator.dart';
import 'package:flutter/material.dart';

class Admin_Kilo extends StatefulWidget {
  const Admin_Kilo({Key? key}) : super(key: key);

  @override
  State<Admin_Kilo> createState() => _Admin_KiloState();
}

class _Admin_KiloState extends State<Admin_Kilo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BotonNavi(),
      appBar: AppBar(title: Text('Pesadas')),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Info(Texto: 'Kilo', cargo: 'Admin')
            ],
          )
          ),
      ),
    );
  }
}