import 'package:agrocaf/informacion/info.dart';
import 'package:agrocaf/widgets/BottonNavigator.dart';
import 'package:flutter/material.dart';


class Admin_Reportes extends StatefulWidget {
  const Admin_Reportes({Key? key}) : super(key: key);

  @override
  State<Admin_Reportes> createState() => _Admin_ReportesState();
}

class _Admin_ReportesState extends State<Admin_Reportes> {
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