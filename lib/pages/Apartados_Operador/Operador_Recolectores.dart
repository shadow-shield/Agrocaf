import 'package:agrocaf/controllers/recolector_controller.dart';
import 'package:agrocaf/informacion/info.dart';
import 'package:agrocaf/widgets/BottonNavigator.dart';
import 'package:agrocaf/widgets/Tablas/Datos_recolector.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Apartado_Operador extends StatelessWidget {
  final RecolectorController controller = Get.put(RecolectorController());

   Apartado_Operador({super.key});
   
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      
      bottomNavigationBar: BotonNavi(),
      appBar: AppBar(
        
        title: Text('Recolectores'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Aquí puedes implementar la funcionalidad de búsqueda si lo deseas
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Container(
            height: 800,
            child: Column(
              children: [
                Info(Texto: 'Recolectores', cargo: 'ADMIN'),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Buscar por nombre',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      controller.updateSearchQuery(value); // Actualiza la búsqueda
                    },
                  ),
                ),
                Tablarecolectores(),
                SizedBox(height: 40,),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}