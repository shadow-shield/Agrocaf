import 'package:agrocaf/informacion/info.dart';
import 'package:agrocaf/pages/Apartados_admin/Abonos/Add_Abono.dart';

import 'package:agrocaf/widgets/BottonNavigator.dart';
import 'package:agrocaf/widgets/Tablas/Datos.Abonos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Admin_Abonos extends StatefulWidget {
  const Admin_Abonos({Key? key}) : super(key: key);

  @override
  State<Admin_Abonos> createState() => _Admin_AbonosState();
}

class _Admin_AbonosState extends State<Admin_Abonos> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton:  FloatingActionButton(
              onPressed: () {
               Get.to(add_Abonos());
              },
              child: Icon(Icons.add,color: Colors.white,),
              backgroundColor:Colors.green,
            ),
      bottomNavigationBar: BotonNavi(),
      appBar: AppBar(title: Text('Abonos')),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Info(Texto: 'Abonos', cargo: 'Admin'),
              TablaAbonos(),
              SizedBox(height: 15,),
              ElevatedButton(
            onPressed: () {
              
            },
            child: SizedBox(
              
              width: 180,
              child: Row(
                children: [
                  Icon(Icons.file_download),
                  SizedBox(width:  2,),
                  Text('Descargar Excel'),
                  SizedBox(width:  2,),
                  Image.asset('images/excel.png')
                ],
              ),
            ),
          )
            ],
          )
          ),
      ),
    );
  }
}