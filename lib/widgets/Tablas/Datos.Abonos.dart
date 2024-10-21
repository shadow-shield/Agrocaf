import 'package:flutter/material.dart';

class TablaAbonos extends StatefulWidget {
  TablaAbonos({super.key});

  @override
  _TablaAbonosState createState() => _TablaAbonosState();
}

class _TablaAbonosState extends State<TablaAbonos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(columns: [
          DataColumn(label: Text('ID Abono')),
          DataColumn(label: Text('Monto')),
          DataColumn(label: Text('Fecha')),
          DataColumn(label: Text('Recolector')),
          DataColumn(label: Text('Método de Pago')),
          DataColumn(label: Text('Acciones')),
        ], rows: [
          DataRow(
            cells: [
              DataCell(Text('Abono001')),
              DataCell(Text('\$150')),
              DataCell(Text('2024-10-15')),
              DataCell(Text('123456789')), // Cédula del recolector
              DataCell(Text('Efectivo')),
              DataCell(Row(
                children: [
                  IconButton(
                    icon: Image.asset('images/edit.png'),
                    onPressed: () {
                      // Lógica para editar el abono
                    },
                  ),
                  IconButton(
                    icon: Image.asset('images/delete.png'),
                    onPressed: () {
                      // Lógica para eliminar el abono
                    },
                  ),
                ],
              )),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Abono002')),
              DataCell(Text('\$200')),
              DataCell(Text('2024-10-10')),
              DataCell(Text('987654321')), // Cédula del recolector
              DataCell(Text('Transferencia')),
              DataCell(Row(
                children: [
                  IconButton(
                    icon: Image.asset('images/edit.png'),
                    onPressed: () {
                      // Lógica para editar el abono
                    },
                  ),
                  IconButton(
                    icon: Image.asset('images/delete.png'),
                    onPressed: () {
                      // Lógica para eliminar el abono
                    },
                  ),
                ],
              )),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Abono003')),
              DataCell(Text('\$300')),
              DataCell(Text('2024-10-05')),
              DataCell(Text('456123789')), // Cédula del recolector
              DataCell(Text('Efectivo')),
              DataCell(Row(
                children: [
                  IconButton(
                    icon: Image.asset('images/edit.png'),
                    onPressed: () {
                      // Lógica para editar el abono
                    },
                  ),
                  IconButton(
                    icon: Image.asset('images/delete.png'),
                    onPressed: () {
                      // Lógica para eliminar el abono
                    },
                  ),
                ],
              )),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Abono004')),
              DataCell(Text('\$250')),
              DataCell(Text('2024-09-30')),
              DataCell(Text('321654987')), // Cédula del recolector
              DataCell(Text('Transferencia')),
              DataCell(Row(
                children: [
                  IconButton(
                    icon: Image.asset('images/edit.png'),
                    onPressed: () {
                      // Lógica para editar el abono
                    },
                  ),
                  IconButton(
                    icon: Image.asset('images/delete.png'),
                    onPressed: () {
                      // Lógica para eliminar el abono
                    },
                  ),
                ],
              )),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Abono005')),
              DataCell(Text('\$180')),
              DataCell(Text('2024-10-12')),
              DataCell(Text('789123456')), // Cédula del recolector
              DataCell(Text('Efectivo')),
              DataCell(Row(
                children: [
                  IconButton(
                    icon: Image.asset('images/edit.png'),
                    onPressed: () {
                      // Lógica para editar el abono
                    },
                  ),
                  IconButton(
                    icon: Image.asset('images/delete.png'),
                    onPressed: () {
                      // Lógica para eliminar el abono
                    },
                  ),
                ],
              )),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Abono006')),
              DataCell(Text('\$220')),
              DataCell(Text('2024-09-28')),
              DataCell(Text('963852741')), // Cédula del recolector
              DataCell(Text('Transferencia')),
              DataCell(Row(
                children: [
                  IconButton(
                    icon: Image.asset('images/edit.png'),
                    onPressed: () {
                      // Lógica para editar el abono
                    },
                  ),
                  IconButton(
                    icon: Image.asset('images/delete.png'),
                    onPressed: () {
                      // Lógica para eliminar el abono
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
