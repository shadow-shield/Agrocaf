import 'package:agrocaf/informacion/info.dart';
import 'package:agrocaf/pages/Apartados_Operador/Agregar_Recolector.dart';
import 'package:agrocaf/widgets/BottonNavigator.dart';

import 'package:agrocaf/widgets/Datos_recolector.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/recolector_controller.dart'; // Asegúrate de importar el controlador

class RecolectoresPage extends StatelessWidget {
  final RecolectorController controller = Get.put(RecolectorController());

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 20, 
            right: 2, 
            child: FloatingActionButton(
              onPressed: () {
                Get.to(() => AddRecolectorPage()); 
              },
              child: Icon(Icons.add,color: Colors.white,),
              backgroundColor:Colors.green,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BotonNavi(),
      appBar: AppBar(
        
        title: Text('Recolectores'),
        actions: [
          
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
                  padding: const EdgeInsets.all(8.0),
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
                 ElevatedButton(
            onPressed: () {
              controller
                  .generateExcel(); // Llamar al método para generar el Excel
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
            ),
          ),
        ),
      ),
    );
  }
  void _showAddRecolectorDialog(BuildContext context, RecolectorController recolectorController) {
    final TextEditingController cedulaController = TextEditingController();
    final TextEditingController nombreController = TextEditingController();
    final TextEditingController telefonoController = TextEditingController();
    final TextEditingController metodoPagoController = TextEditingController();
    final TextEditingController cuentaController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Agregar Recolector'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: cedulaController,
                  decoration: InputDecoration(labelText: 'Cédula'),
                ),
                TextField(
                  controller: nombreController,
                  decoration: InputDecoration(labelText: 'Nombre'),
                ),
                TextField(
                  controller: telefonoController,
                  decoration: InputDecoration(labelText: 'Teléfono'),
                ),
                TextField(
                  controller: metodoPagoController,
                  decoration: InputDecoration(labelText: 'Método de Pago'),
                ),
                TextField(
                  controller: cuentaController,
                  decoration: InputDecoration(labelText: 'Número de Cuenta'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
               
                String cedula = cedulaController.text.trim();
                String nombre = nombreController.text.trim();
                String telefono = telefonoController.text.trim();
                String metodoPago = metodoPagoController.text.trim();
                String cuenta = cuentaController.text.trim();

                if (cedula.isNotEmpty && nombre.isNotEmpty && telefono.isNotEmpty &&
                    metodoPago.isNotEmpty && cuenta.isNotEmpty) {
                  recolectorController.saveNewRecolector(
                    cedula,
                    nombre,
                    telefono,
                    metodoPago,
                    cuenta,
                  ); // Llama al método de agregar
                  Navigator.of(context).pop(); // Cerrar el diálogo
                } else {
                  Get.snackbar('Error', 'Por favor, complete todos los campos.');
                }
              },
              child: Text('Agregar'),
            ),
          ],
        );
      },
    );
  }
}