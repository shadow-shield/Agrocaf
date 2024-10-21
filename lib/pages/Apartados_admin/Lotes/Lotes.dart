import 'package:agrocaf/informacion/info.dart';
import 'package:agrocaf/pages/Apartados_admin/Lotes/Agregar_Lotes.dart';
import 'package:agrocaf/widgets/BottonNavigator.dart';
import 'package:agrocaf/widgets/Tablas/Datos_Lotes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Admin_Lotes extends StatefulWidget {
  const Admin_Lotes({Key? key}) : super(key: key);

  @override
  State<Admin_Lotes> createState() => _Admin_LotesState();
}

class _Admin_LotesState extends State<Admin_Lotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:  FloatingActionButton(
              onPressed: () {
               Get.to(AddLotes());
              },
              child: Icon(Icons.add,color: Colors.white,),
              backgroundColor:Colors.green,
            ),
      bottomNavigationBar: BotonNavi(),
      appBar: AppBar(title: Text('Lotes')),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Info(Texto: 'Lotes', cargo: 'Admin'),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      labelText: 'Buscar ID Lote',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                     
                    },
                  ),
                ),
                TablaLotes()
            ],
          )
          ),
      ),
    );
  }
}