import 'package:flutter/material.dart';

class Pagos extends StatefulWidget {
  const Pagos({super.key});

  @override
  State<Pagos> createState() => _PagosState();
}

class _PagosState extends State<Pagos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Text('Aqui esta pago'),
    );
  }
}