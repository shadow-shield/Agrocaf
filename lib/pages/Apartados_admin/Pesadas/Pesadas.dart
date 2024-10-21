
import 'package:agrocaf/informacion/info.dart';
import 'package:agrocaf/pages/Apartados_admin/Pesadas/Add_Pesadas.dart';

import 'package:agrocaf/widgets/BottonNavigator.dart';
import 'package:agrocaf/widgets/Tablas/Datos_Tablapezadas.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Admin_Pesadas extends StatelessWidget {
  const Admin_Pesadas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
              onPressed: () {
               Get.to(AddPesadas());
              },
              child: Icon(Icons.add,color: Colors.white,),
              backgroundColor:Colors.green,
            ),
      bottomNavigationBar: BotonNavi(),
      appBar: AppBar(title: Text('Pesadas')),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Info(Texto: 'Pesadas', cargo: 'Admin'),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      labelText: 'Buscar Por Id Pesadas',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                     
                    },
                  ),
                ),
              TablaPezadas()
            ],
          )
          ),
      ),
    );
  }
}
