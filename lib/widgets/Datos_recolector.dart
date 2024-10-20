import 'package:flutter/material.dart';

import 'package:agrocaf/models/recolector_model.dart'; // Asegúrate de importar tu modelo

class RecolectorTable extends StatelessWidget {
  final List<Recolector> recolectores;

  RecolectorTable({Key? key, required this.recolectores}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(label: Text('Cédula')),
        DataColumn(label: Text('Nombre')),
        DataColumn(label: Text('Teléfono')),
        DataColumn(label: Text('Método de Pago')),
        DataColumn(label: Text('Número de Cuenta')),
      ],
      rows: recolectores.map((recolector) {
        return DataRow(cells: [
          DataCell(Text(recolector.cedula)),
          DataCell(Text(recolector.nombre)),
          DataCell(Text(recolector.telefono)),
          DataCell(Text(recolector.metodopago)),
          DataCell(Text(recolector.ncuenta)),
        ]);
      }).toList(),
    );
  }
}
