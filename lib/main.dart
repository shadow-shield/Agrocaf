import 'package:agrocaf/pages/Apartados_Operador/home_operador.dart';
import 'package:agrocaf/pages/Apartados_admin/Abonos/Abonos.dart';
import 'package:agrocaf/pages/Apartados_admin/Kilo/Klio.dart';
import 'package:agrocaf/pages/Apartados_admin/Lotes/Lotes.dart';
import 'package:agrocaf/pages/Apartados_admin/Pesadas/Pesadas.dart';
import 'package:agrocaf/pages/Apartados_admin/Recolectores/Recolectores.dart';
import 'package:agrocaf/pages/Apartados_admin/Reportes.dart';
import 'package:agrocaf/firebase_options.dart';
import 'package:agrocaf/pages/Apartados_Operador/Operador_Recolectores.dart';
import 'package:agrocaf/pages/Login/login_page.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializa Firebase dependiendo de si es web o no
  // if (GetPlatform.isWeb) {
  //   await Firebase.initializeApp(
  //     options: const FirebaseOptions(
  //         apiKey: "AIzaSyCiX67MfBCHQSclhS84z61oS9GGB84l4GY",
  //         authDomain: "movil-2024-c121b.firebaseapp.com",
  //         projectId: "movil-2024-c121b",
  //         storageBucket: "movil-2024-c121b.appspot.com",
  //         messagingSenderId: "205478674110",
  //         appId: "1:205478674110:web:f1d7582c7c1b34056668ef"),
  //   );
  // } else {
  //   await Firebase.initializeApp();
  // }

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Authenticaion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: LoginPage(),
      initialRoute: '/',
      getPages: [
        GetPage(page: () => HomePage(), name: '/home'),
        GetPage(page: () => LoginPage(), name: '/'),
        GetPage(page: () =>  Apartado_Operador(), name: '/apartado_ope'),
        GetPage(page: () =>  Admin_Abonos(), name: '/apartado_abono'),
        GetPage(page: () =>  Admin_Kilo(), name: '/apartado_kilo'),
        GetPage(page: () =>  Admin_Lotes(), name: '/apartado_lotes'),
        GetPage(page: () =>  Admin_Pesadas(), name: '/apartado_pesadas'),
        GetPage(
            page: () =>  RecolectoresPage(),
            name: '/apartado_recole'), 
        GetPage(
            page: () => const Admin_Reportes(),
            name: '/apartado_report'), 
      ],
    );
  }
}
