/*import 'package:auth_2024/pages/page1.dart';
import 'package:auth_2024/pages/page2.dart';
import 'package:auth_2024/pages/page4.dart';*/
import 'package:agrocaf/controllers/recolector_controller.dart';
import 'package:agrocaf/pages/operador/registro_pesada_operador.dart';
import 'package:agrocaf/widgets/BottonNavigator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/auth_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthController _authController =
      Get.find(); // Obtener el controlador de autenticación
  final RecolectorController _recolectorController =
      Get.put(RecolectorController()); // Inyectar RecolectorController
  int _selectedIndex = 0;

  // Lista de las cuatro páginas
  final List<Widget> _pages = [
    RegistroPesadaOperador(),
  ];

  

  @override
  Widget build(BuildContext context) {
    _recolectorController.fetchRecolectores();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(76, 140, 43, 1),
        actions: [
          IconButton(
            icon: Container(
              child: Row(
                children: [
                  Text('Salir'),
                  SizedBox(width: 8,),
                  Icon(Icons.logout),
                ],
              ),
            ),
            onPressed: () {
              _authController.signOut(); // Llamar al método de cerrar sesión
            },
          ),
        ],
      ),
      body: _pages[_selectedIndex],
       
      bottomNavigationBar:BotonNavi()
    );
  }
}

Widget _buildTextField(
    BuildContext context, String hintText, TextEditingController controller,
    {bool obscureText = false}) {
  return TextField(
    controller: controller,
    obscureText: obscureText,
    decoration: InputDecoration(
      labelText: hintText,
      filled: true,
      fillColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
