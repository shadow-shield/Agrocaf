import 'package:agrocaf/informacion/info.dart';
import 'package:agrocaf/widgets/BottonNavigator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AddLotes extends StatelessWidget {
 

  final TextEditingController idLoteController = TextEditingController();
  final TextEditingController pesoController = TextEditingController();
  final TextEditingController calidadController = TextEditingController();
  final TextEditingController tipoGranoController = TextEditingController();
  final TextEditingController origenController = TextEditingController();

  AddLotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BotonNavi(),
      appBar: AppBar(
        title: Text('Agregar Lote'),
      ),
      body: SafeArea(
        child: Column(children: [
          Info(Texto: 'Agregar Lote de Granos', cargo: 'Admin'),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                TextField(
                  controller: idLoteController,
                  decoration: InputDecoration(labelText: 'Nombre'),
                ),
                TextField(
                  controller: pesoController,
                  decoration: InputDecoration(labelText: 'Restriccion'),
                ),
                TextField(
                  controller: calidadController,
                  decoration: InputDecoration(labelText: 'Plantas'),
                ),
                TextField(
                  controller: tipoGranoController,
                  decoration: InputDecoration(labelText: 'Hectareas'),
                ),
                
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    
                    Get.back(); // Regresa a la pantalla anterior
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green, // Color del texto
                  ),
                  child: SizedBox(
                    width: 130,
                    child: Row(
                      children: [
                        Text('Guardar Lote'),
                        SizedBox(width: 10),
                        Image.asset('images/add.png', width: 30),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
