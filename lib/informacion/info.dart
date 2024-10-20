import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  final String Texto;
  final String cargo; // Añadido: parámetro para el valor del kilo

  // Constructor que recibe el valor del kilo
  Info({required this.Texto, required this.cargo});

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  late String valorDelKilo; // Variable para almacenar el valor del kilo

  @override
  void initState() {
    super.initState();
    valorDelKilo = widget.Texto; // Inicializa el valor del kilo
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: Color.fromRGBO(76, 140, 43, 1),
        padding: EdgeInsets.only(bottom: 16.0, left: 1, right: 4),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    'images/agrocaf_logo.png',
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Agrocaf\n ${widget.cargo}',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Color.fromRGBO(255, 255, 255, 0.965),
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                  ),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Container(
                color: Color.fromRGBO(252, 252, 252, 1),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Text(valorDelKilo),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
