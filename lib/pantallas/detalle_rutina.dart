import 'package:flutter/material.dart';

class DetalleRutinaScreen extends StatelessWidget {
  final String dia;
  final String grupoMuscular;

  const DetalleRutinaScreen({
    super.key,
    required this.dia,
    required this.grupoMuscular,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> ejercicios = [
      'Press de banca - 4 series x 10 repeticiones',
      'Aperturas con mancuernas - 3 series x 12 repeticiones',
      'Fondos en paralelas - 3 series x 8 repeticiones',
    ];
    
    return Scaffold(
      appBar: AppBar(title: const Text('P-05 Detalle de rutina')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
    );
  }
}