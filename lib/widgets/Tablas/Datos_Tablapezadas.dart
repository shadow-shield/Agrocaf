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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(columns: [
          DataColumn(label: Text('ID Pezada')),
          DataColumn(label: Text('Peso')),
          DataColumn(label: Text('Calidad')),
          DataColumn(label: Text('Fecha')),
          DataColumn(label: Text('Recolector Cedula')),
          DataColumn(label: Text('Acciones')),
        ], rows: [
          DataRow(
            cells: [
              DataCell(Text('1415')),
              DataCell(Text('14kg')),
              DataCell(Text('Buena')),
              DataCell(Text('15/02/2024')),
              DataCell(Text('150150150')),
              DataCell(Row(
                children: [
                  IconButton(
                    icon: Image.asset('images/edit.png'),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('images/delete.png'),
                    onPressed: () {},
                  ),
                ],
              ))
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('141516')),
              DataCell(Text('12kg')),
              DataCell(Text('Regular')),
              DataCell(Text('15/04/2024')),
              DataCell(Text('1601606060')),
              DataCell(Row(
                children: [
                  IconButton(
                    icon: Image.asset('images/edit.png'),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('images/delete.png'),
                    onPressed: () {},
                  ),
                ],
              ))
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('181314')),
              DataCell(Text('20kg')),
              DataCell(Text('Excelente')),
              DataCell(Text('18/02/2024')),
              DataCell(Text('146565')),
              DataCell(Row(
                children: [
                  IconButton(
                    icon: Image.asset('images/edit.png'),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('images/delete.png'),
                    onPressed: () {},
                  ),
                ],
              ))
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('15456852')),
              DataCell(Text('30kg')),
              DataCell(Text('Buena')),
              DataCell(Text('22/08/2024')),
              DataCell(Text('14585685')),
              DataCell(Row(
                children: [
                  IconButton(
                    icon: Image.asset('images/edit.png'),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('images/delete.png'),
                    onPressed: () {},
                  ),
                ],
              ))
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('141516')),
              DataCell(Text('12kg')),
              DataCell(Text('Regular')),
              DataCell(Text('15/04/2024')),
              DataCell(Text('1601606060')),
              DataCell(Row(
                children: [
                  IconButton(
                    icon: Image.asset('images/edit.png'),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('images/delete.png'),
                    onPressed: () {},
                  ),
                ],
              ))
            ],
          )
        ]),
      ),
    );
  }
}
