import 'package:agrocaf/controllers/recolector_controller.dart';
import 'package:agrocaf/informacion/info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistroPesadaOperador extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _pesadaController = TextEditingController(); // Controlador para la pesada

  @override
  Widget build(BuildContext context) {
    final RecolectorController _recolectorController = Get.find(); // Obtener el controlador de RecolectorController

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                // Información general (Logo, título)
                Info(),

                SizedBox(height: 20),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(width: 2, color: Colors.green),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Ingrese la pesada',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey[300],
                            ),
                            child: Center(child: Text('KG')),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: TextField(
                              controller: _pesadaController, // Controlador para el campo de pesada
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Pesada',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 60),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      labelText: 'Buscar por nombre',
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      _recolectorController.updateSearchQuery(value); // Actualizar la búsqueda en el controlador
                    },
                  ),
                ),

                SizedBox(height: 20),

                Obx(() {
                  return SizedBox(
                    height: 300,
                    child: ListView.builder(
                      itemCount: _recolectorController.filteredRecolectores.length,
                      itemBuilder: (context, index) {
                        final item = _recolectorController.filteredRecolectores[index];
                        return ListTile(
                          title: Text(item.nombre),
                          subtitle: Text(item.cedula),
                          trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () => _recolectorController.deleteRecolector(item.cedula),
                          ),
                        );
                      },
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
      
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 20, 
            right: 2, 
            child: FloatingActionButton(
              onPressed: () {
                _showAddRecolectorDialog(context, _recolectorController); // Mostrar el diálogo al presionar el botón
              },
              child: Icon(Icons.add,color: Colors.white,),
              backgroundColor:Colors.green,
            ),
          ),
        ],
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
