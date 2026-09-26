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
      backgroundColor: const Color(0xFFF2EDE4),
      appBar: AppBar(
        title: const Text('P-05 Detalle de rutina'),
        backgroundColor: const Color(0xFF2C3359),
        foregroundColor: Colors.white,
        ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Dia: $dia',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('Grupo muscular: $grupoMuscular',
                style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            const Text('Ejercicios:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Expanded(
              child: ListView.builder(
                itemCount: ejercicios.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.fitness_center),
                    title: Text(ejercicios[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}