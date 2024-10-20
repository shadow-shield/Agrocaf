import 'package:agrocaf/informacion/info.dart';
import 'package:agrocaf/widgets/BottonNavigator.dart';
import 'package:flutter/material.dart';

class Apartado_Operador extends StatefulWidget {
  const Apartado_Operador({super.key});

  @override
  State<Apartado_Operador> createState() => _Apartado_OperadorState();
}

class _Apartado_OperadorState extends State<Apartado_Operador> {
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