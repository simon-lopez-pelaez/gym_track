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
      backgroundColor: const Color(0xFFF2EDE4),
      appBar: AppBar(
        title: const Text('P-04 Horarios'),
        backgroundColor: const Color(0xFF2C3359),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: dias.length,
        itemBuilder: (context, index) {
          bool activo = diasSeleccionados[index];

          return ListTile(
            leading: Checkbox(
              value: activo,
              activeColor: const Color(0xFF75B8BF),
              onChanged: (bool? nuevoValor) {
                setState(() {
                  diasSeleccionados[index] = nuevoValor ?? false;
                });
              },
            ),
            title: Text(dias[index]),
            subtitle: Text(activo ? grupoMuscular[index] : 'Dia de descanso'),
            onTap: activo? () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleRutinaScreen(
                    dia: dias[index],
                    grupoMuscular: grupoMuscular[index],
                  ),
                ),
              );
            }: null,
          );
        },
      ),
    );
  }
}