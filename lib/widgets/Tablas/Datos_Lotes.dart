import 'package:flutter/material.dart';

class TablaLotes extends StatefulWidget {
  TablaLotes({super.key});

  @override
  _TablaLotesState createState() => _TablaLotesState();
}

class _TablaLotesState extends State<TablaLotes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(columns: [
          DataColumn(label: Text('Nombre')),
          DataColumn(label: Text('Restricción')),
          DataColumn(label: Text('Plantas')),
          DataColumn(label: Text('Hectáreas')),
          DataColumn(label: Text('Acciones')),
        ], rows: [
          DataRow(
            cells: [
              DataCell(Text('Lote A')),
              DataCell(Text('Ninguna')),
              DataCell(Text('Café')),
              DataCell(Text('2.5')),
              DataCell(Row(
                children: [
                  IconButton(
                    icon: Image.asset('images/edit.png'),
                    onPressed: () {
                      // Lógica para editar el lote
                    },
                  ),
                  IconButton(
                    icon: Image.asset('images/delete.png'),
                    onPressed: () {
                      // Lógica para eliminar el lote
                    },
                  ),
                ],
              )),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Lote B')),
              DataCell(Text('Fertilizante')),
              DataCell(Text('Cacao')),
              DataCell(Text('1.2')),
              DataCell(Row(
                children: [
                  IconButton(
                    icon: Image.asset('images/edit.png'),
                    onPressed: () {
                      // Lógica para editar el lote
                    },
                  ),
                  IconButton(
                    icon: Image.asset('images/delete.png'),
                    onPressed: () {
                      // Lógica para eliminar el lote
                    },
                  ),
                ],
              )),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Lote C')),
              DataCell(Text('Riego restringido')),
              DataCell(Text('Arroz')),
              DataCell(Text('3.0')),
              DataCell(Row(
                children: [
                  IconButton(
                    icon: Image.asset('images/edit.png'),
                    onPressed: () {
                      // Lógica para editar el lote
                    },
                  ),
                  IconButton(
                    icon: Image.asset('images/delete.png'),
                    onPressed: () {
                      // Lógica para eliminar el lote
                    },
                  ),
                ],
              )),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Lote D')),
              DataCell(Text('Ninguna')),
              DataCell(Text('Frijol')),
              DataCell(Text('1.8')),
              DataCell(Row(
                children: [
                  IconButton(
                    icon: Image.asset('images/edit.png'),
                    onPressed: () {
                      // Lógica para editar el lote
                    },
                  ),
                  IconButton(
                    icon: Image.asset('images/delete.png'),
                    onPressed: () {
                      // Lógica para eliminar el lote
                    },
                  ),
                ],
              )),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Lote E')),
              DataCell(Text('Invernadero')),
              DataCell(Text('Maíz')),
              DataCell(Text('2.0')),
              DataCell(Row(
                children: [
                  IconButton(
                    icon: Image.asset('images/edit.png'),
                    onPressed: () {
                      // Lógica para editar el lote
                    },
                  ),
                  IconButton(
                    icon: Image.asset('images/delete.png'),
                    onPressed: () {
                      // Lógica para eliminar el lote
                    },
                  ),
                ],
              )),
            ],
          ),
        ]),
      ),
    );
  }
}
