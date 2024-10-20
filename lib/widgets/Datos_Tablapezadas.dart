/* 
import 'package:agrocaf/Apartados_admin/Edit_Pesadas.dart';
import 'package:agrocaf/controllers/pezadas_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TablaPezadas extends StatelessWidget {
  TablaPezadas({super.key});
  final PezadaController controller = Get.put(PezadaController()); // Usar el controlador de Pezadas

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Obx(() {
            if (controller.isLoading.value) {
              return Center(child: CircularProgressIndicator());
            } else if (controller.filteredPezadas.isEmpty) {
              return Center(child: Text('No hay pezadas para mostrar.'));
            }
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  DataColumn(label: Text('ID Pezada')),
                  DataColumn(label: Text('Peso')),
                  DataColumn(label: Text('Calidad')),
                  DataColumn(label: Text('Fecha')),
                  DataColumn(label: Text('Recolector Cédula')),
                  DataColumn(label: Text('Acciones')),
                ],
                rows: controller.filteredPezadas.map((pezada) {
                  return DataRow(
                    cells: [
                      DataCell(Text("141515")),
                      DataCell(Text("14kg")), // Convertir el peso a texto
                      DataCell(Text("Buena")),
                      DataCell(Text('14/02/2024')), // Convertir la fecha a un formato legible
                      DataCell(Text("150505050")),
                      DataCell(
                        Row(
                          children: [
                            IconButton(
                              icon: Image.asset('images/edit.png'),
                              onPressed: () {
                                Get.to(() => EditPezadaPage(pezada: pezada)); // Página para editar la Pezada
                              },
                            ),
                            IconButton(
                              icon: Image.asset('images/delete.png'),
                              onPressed: () {
                                controller.deletePezada(pezada.id); // Método para eliminar la Pezada
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
 */
import 'package:flutter/material.dart';

class TablaPezadas extends StatefulWidget {
  TablaPezadas({super.key});

  @override
  _TablaPezadasState createState() => _TablaPezadasState();
}

class _TablaPezadasState extends State<TablaPezadas> {
  // Datos estáticos para mostrar en la tabla
  final List<Map<String, String>> pezadas = [
    {
      'id': '141515',
      'peso': '14kg',
      'calidad': 'Buena',
      'fecha': '14/02/2024',
      'recolectorCedula': '150505050',
    },
    {
      'id': '141516',
      'peso': '12kg',
      'calidad': 'Regular',
      'fecha': '15/02/2024',
      'recolectorCedula': '160606060',
    },
    {
      'id': '141517',
      'peso': '16kg',
      'calidad': 'Excelente',
      'fecha': '16/02/2024',
      'recolectorCedula': '170707070',
    },
  ];

  // Lista para las Pezadas filtradas
  List<Map<String, String>> filteredPezadas = [];

  // Controlador para el campo de búsqueda
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Al iniciar, mostrar todas las Pezadas
    filteredPezadas = pezadas;
  }

  // Método para filtrar Pezadas basado en el texto ingresado
  void filterPezadas(String query) {
    setState(() {
      if (query.isEmpty) {
        // Si el campo de búsqueda está vacío, mostrar todas las Pezadas
        filteredPezadas = pezadas;
      } else {
        filteredPezadas = pezadas.where((pezada) {
          return pezada['id']!.toLowerCase().contains(query.toLowerCase()) ||
              pezada['peso']!.toLowerCase().contains(query.toLowerCase()) ||
              pezada['calidad']!.toLowerCase().contains(query.toLowerCase()) ||
              pezada['fecha']!.toLowerCase().contains(query.toLowerCase()) ||
              pezada['recolectorCedula']!.toLowerCase().contains(query.toLowerCase());
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Campo de búsqueda
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                labelText: 'Buscar Pezada',
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    searchController.clear();
                    filterPezadas(''); // Limpiar el filtro al presionar el botón "clear"
                  },
                ),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                filterPezadas(value); // Filtrar la lista cuando se ingrese texto
              },
            ),
          ),

          // Tabla de datos filtrados
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  DataColumn(label: Text('ID Pezada')),
                  DataColumn(label: Text('Peso')),
                  DataColumn(label: Text('Calidad')),
                  DataColumn(label: Text('Fecha')),
                  DataColumn(label: Text('Recolector Cédula')),
                  DataColumn(label: Text('Acciones')),
                ],
                rows: filteredPezadas.map((pezada) {
                  return DataRow(
                    cells: [
                      DataCell(Text(pezada['id']!)),
                      DataCell(Text(pezada['peso']!)), // Convertir el peso a texto
                      DataCell(Text(pezada['calidad']!)),
                      DataCell(Text(pezada['fecha']!)), // Mostrar fecha en formato legible
                      DataCell(Text(pezada['recolectorCedula']!)),
                      DataCell(
                        Row(
                          children: [
                            IconButton(
                              icon: Image.asset('images/edit.png'),
                              onPressed: () {
                                // Acción para editar la Pezada (puedes personalizarlo)
                                print('Editar Pezada: ${pezada['id']}');
                              },
                            ),
                            IconButton(
                              icon: Image.asset('images/delete.png'),
                              onPressed: () {
                                // Acción para eliminar la Pezada (puedes personalizarlo)
                                print('Eliminar Pezada: ${pezada['id']}');
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

