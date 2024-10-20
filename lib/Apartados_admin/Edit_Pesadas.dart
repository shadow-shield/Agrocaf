/* 
import 'package:agrocaf/controllers/pezadas_controller.dart';

import 'package:agrocaf/models/pezadas_model.dart';
import 'package:agrocaf/widgets/BottonNavigator.dart'; // Widget para la barra de navegación
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditPezadaPage extends StatelessWidget {
  final Pezada pezada;

  EditPezadaPage({super.key, required this.pezada});

  final PezadaController controller = Get.find();

  final TextEditingController idController = TextEditingController();
  final TextEditingController pesoController = TextEditingController();
  final TextEditingController calidadController = TextEditingController();
  final TextEditingController fechaController = TextEditingController();
  final TextEditingController recolectorCedulaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BotonNavi(),
      appBar: AppBar(
        title: Text('Editar Pezada'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  TextField(
                    controller: idController..text = pezada.id, // Rellenar con el valor actual
                    decoration: InputDecoration(labelText: 'ID Pezada'),
                  ),
                  TextField(
                    controller: pesoController..text = pezada.peso.toString(), // Rellenar con el valor actual
                    decoration: InputDecoration(labelText: 'Peso'),
                    keyboardType: TextInputType.number, // Para ingresar valores numéricos
                  ),
                  TextField(
                    controller: calidadController..text = pezada.calidad, // Rellenar con el valor actual
                    decoration: InputDecoration(labelText: 'Calidad'),
                  ),
                  TextField(
                    controller: fechaController..text = pezada.fecha.toLocal().toString(), // Rellenar con el valor actual
                    decoration: InputDecoration(labelText: 'Fecha'),
                  ),
                  TextField(
                    controller: recolectorCedulaController..text = pezada.recolectorCedula, // Rellenar con el valor actual
                    decoration: InputDecoration(labelText: 'Cédula del Recolector'),
                  ),
                  SizedBox(height: 40),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.green, // Color del texto
                            ),
                            onPressed: () {
                              controller.saveNewPezada(
                                idController.text,
                                DateTime.parse(pesoController.text),
                                double.parse(calidadController.text),
                                

                              );
                            },
                            icon: Icon(Icons.add),
                            label: Text('Agregar'),
                          ),
                          SizedBox(width: 3),
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.green, // Color del texto
                            ),
                            onPressed: () {
                              // Lógica para eliminar la Pezada actual
                              controller.deletePezada(pezada.id);
                              Get.back(); // Cierra la pantalla de edición después de eliminar
                            },
                            icon: Icon(Icons.delete),
                            label: Text('Eliminar'),
                          ),
                          SizedBox(width: 3),
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.green, // Color del texto
                            ),
                            onPressed: () {
                              // Actualizar la Pezada
                              controller.updatePezada(Pezada(
                                id: idController.text,
                                peso: double.parse(pesoController.text),
                                calidad: calidadController.text,
                                fecha: DateTime.parse(fechaController.text),
                                recolectorCedula: recolectorCedulaController.text,
                              ));
                              Get.back(); // Cierra la pantalla de edición
                            },
                            icon: Icon(Icons.edit),
                            label: Text('Editar'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 */