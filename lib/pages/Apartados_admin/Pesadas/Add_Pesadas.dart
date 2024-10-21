import 'package:agrocaf/informacion/info.dart';

import 'package:agrocaf/widgets/BottonNavigator.dart';
import 'package:flutter/material.dart';

class AddPesadas extends StatelessWidget {
  

  final TextEditingController idController = TextEditingController();
  final TextEditingController pesoController = TextEditingController();
  final TextEditingController calidadController = TextEditingController();
  final TextEditingController fechaController = TextEditingController();
  final TextEditingController recolectorCedulaController =
      TextEditingController();

  AddPesadas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BotonNavi(),
      appBar: AppBar(
        title: Text('Agregar Pezada'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Info(Texto: 'Agregar Pezada de Granos', cargo: 'Admin'),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  TextField(
                    controller: idController,
                    decoration: InputDecoration(labelText: 'ID Pezada'),
                  ),
                  TextField(
                    controller: pesoController,
                    decoration: InputDecoration(labelText: 'Peso (kg)'),
                    keyboardType:
                        TextInputType.number, // Para ingresar valores numéricos
                  ),
                  TextField(
                    controller: calidadController,
                    decoration: InputDecoration(labelText: 'Calidad'),
                  ),
                  TextField(
                    controller: fechaController,
                    decoration:
                        InputDecoration(labelText: 'Fecha (AAAA-MM-DD)'),
                  ),
                  TextField(
                    controller: recolectorCedulaController,
                    decoration:
                        InputDecoration(labelText: 'Cédula del Recolector'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green, // Color del texto
                    ),
                    child: SizedBox(
                      width: 140,
                      child: Row(
                        children: [
                          Text('Guardar Pesada'),
                          SizedBox(width: 7),
                          Image.asset('images/add.png', width: 30),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
