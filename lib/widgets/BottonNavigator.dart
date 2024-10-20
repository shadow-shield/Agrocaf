import 'package:agrocaf/pages/Configuracion/Configuraciom.dart';
import 'package:agrocaf/pages/Pagos/Pagos.dart';
import 'package:agrocaf/pages/Temporadas/Temporadas.dart';
import 'package:agrocaf/pages/Apartados_Operador/home_operador.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BotonNavi extends StatelessWidget {
  void _HomePage(BuildContext context) {
    Get.to(HomePage());
  }

  void _Pagos(BuildContext context) {
    Get.to(Pagos());
  }

  void _Temporada(BuildContext context) {
    Get.to(Temporada());
  }

  void _Configuracion(BuildContext context) {
    Get.to(Configuracion());
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromARGB(164, 83, 80, 80),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      onTap: (int index) {
        switch (index) {
          case 0:
            _HomePage(context);
            break;
          case 1:
            _Pagos(context);
            break;
          case 2:
            _Temporada(context); 
            break;
          case 3:
            _Configuracion(context); 
            break;
        }
      },
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.green,
          icon: Image.asset(
            'images/home2.png',
            width: 30,
          ),
          label: 'PRINCIPAL',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'images/Home.png',
            width: 30,
          ),
          label: 'PAGOS',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'images/calen.png',
            width: 30,
          ),
          label: 'TEMPORADA',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'images/config.png',
            width: 30,
          ),
          label: 'CONFIGURACIÓN',
        ),
      ],

      showUnselectedLabels: true, // Asegura que se muestren las etiquetas no seleccionadas
    );
  }
}