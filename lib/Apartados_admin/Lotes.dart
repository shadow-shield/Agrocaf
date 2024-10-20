import 'package:agrocaf/informacion/info.dart';
import 'package:agrocaf/widgets/BottonNavigator.dart';
import 'package:flutter/material.dart';

class Admin_Lotes extends StatefulWidget {
  const Admin_Lotes({Key? key}) : super(key: key);

  @override
  State<Admin_Lotes> createState() => _Admin_LotesState();
}

class _Admin_LotesState extends State<Admin_Lotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BotonNavi(),
      appBar: AppBar(title: Text('Lotes')),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Info(Texto: 'Lotes', cargo: 'Admin')
            ],
          )
          ),
      ),
    );
  }
}