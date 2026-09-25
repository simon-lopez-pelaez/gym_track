// lib/pantallas/login.dart
import 'package:flutter/material.dart';

class HorariosScreen extends StatelessWidget {
  const HorariosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('P-04 Horarios')),
      body: const Center(child: Text('Pantalla de horarios')),
    );
  }
}