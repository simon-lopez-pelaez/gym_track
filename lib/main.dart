import 'package:flutter/material.dart';
import 'pantallas/login.dart';
import 'pantallas/perfil.dart';
import 'pantallas/menu_principal.dart';
import 'pantallas/horarios.dart';

void main() => runApp(const EntrenaApp());

class EntrenaApp extends StatelessWidget {
  const EntrenaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Entrenamiento Fisico',
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/perfil': (context) => const PerfilScreen(),
        '/menu': (context) => const MenuPrincipalScreen(),
        '/horarios': (context) => const HorariosScreen(),
      },
    );
  }
}