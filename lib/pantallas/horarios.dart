import 'package:flutter/material.dart';
import 'detalle_rutina.dart';

class HorariosScreen extends StatefulWidget {
  const HorariosScreen({super.key});

  @override
  State<HorariosScreen> createState() => _HorariosScreenState();
}

class _HorariosScreenState extends State<HorariosScreen> {
  final List<String> dias = [
    'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado', 'Domingo'
  ];
  List<bool> diasSeleccionados = [true, false, true, false, true, false, false];

  final List<String> grupoMuscular = [
    'Pecho', 'Descanso', 'Espalda', 'Descanso', 'Pierna', 'Descanso', 'Descanso'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('P-04 Horarios')),
      body: ListView.builder(
        itemCount: dias.length,
        itemBuilder: (context, index) {
          bool activo = diasSeleccionados[index];
        },
      ),
    );
  }
}