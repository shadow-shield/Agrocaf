import 'package:agrocaf/informacion/info.dart';
import 'package:agrocaf/widgets/BottonNavigator.dart';
import 'package:flutter/material.dart';

class Admin_recolec extends StatefulWidget {
  const Admin_recolec({Key? key}) : super(key: key);

  @override
  State<Admin_recolec> createState() => _Admin_recolecState();
}

class _Admin_recolecState extends State<Admin_recolec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: BotonNavi(),
     body: SingleChildScrollView(
      child: SafeArea(
        child:Column(
          children: [
            Info(cargo: 'Admin',
              Texto: 'Valor del kilo \$-------',)
          ],
        )
      ),
     ) 
    );
  }
}