
import 'package:flutter/material.dart';

class MenuPrincipalScreen extends StatefulWidget {
  const MenuPrincipalScreen({super.key});

  @override
  State<MenuPrincipalScreen> createState() => _MenuPrincipalScreenState();
}

class _MenuPrincipalScreenState extends State<MenuPrincipalScreen> {
  // Dato fijo por ahora, luego se conecta con el perfil real del usuario
  final String nombreUsuario = 'Pacho';

  // Fijo por ahora: si el usuario tiene plan premium o no (RF-09)
  final bool esPremium = false;

  // Lugar de entrenamiento seleccionado (RF-04)
  String lugarSeleccionado = 'Gimnasio';

  @override
  Widget build(BuildContext context) {
    const Color cream = Color(0xFFF2EDE4);
    const Color navy = Color(0xFF2C3359);
    const Color mustard = Color(0xFFF2BE5C);
    const Color turquoise = Color(0xFF75B8BF);
    const Color mint = Color(0xFFDAEDE2);

    return Scaffold(
      backgroundColor: cream,
      appBar: AppBar(
        title: const Text('P-03 Menú Principal'),
        backgroundColor: navy,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Saludo con el nombre del usuario
            Text(
              'Hola, $nombreUsuario 👋',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: navy,
              ),
            ),
            const SizedBox(height: 24),

            // Selector de lugar de entrenamiento (RF-04)
            const Text(
              '¿Dónde vas a entrenar hoy?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: navy,
              ),
            ),
            RadioListTile<String>(
              title: const Text('Gimnasio'),
              value: 'Gimnasio',
              groupValue: lugarSeleccionado,
              activeColor: turquoise,
              onChanged: (String? valor) {
                setState(() {
                  lugarSeleccionado = valor!;
                });
              },
            ),
            RadioListTile<String>(
              title: const Text('Casa'),
              value: 'Casa',
              groupValue: lugarSeleccionado,
              activeColor: turquoise,
              onChanged: (String? valor) {
                setState(() {
                  lugarSeleccionado = valor!;
                });
              },
            ),
            RadioListTile<String>(
              title: const Text('Parque'),
              value: 'Parque',
              groupValue: lugarSeleccionado,
              activeColor: turquoise,
              onChanged: (String? valor) {
                setState(() {
                  lugarSeleccionado = valor!;
                });
              },
            ),

            const SizedBox(height: 24),
            const Divider(),
            const SizedBox(height: 8),

            // Acceso a Perfil
            ListTile(
              tileColor: mint,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              leading: const Icon(Icons.person, color: navy),
              title: const Text('Mi perfil'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.pushNamed(context, '/perfil');
              },
            ),
            const SizedBox(height: 12),

            // Acceso a Horarios / Rutinas
            ListTile(
              tileColor: mint,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              leading: const Icon(Icons.calendar_month, color: navy),
              title: const Text('Horarios y rutinas'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.pushNamed(context, '/horarios');
              },
            ),
            const SizedBox(height: 12),

            // Alimentación: bloqueada si el usuario no es premium (RF-09)
            ListTile(
              tileColor: esPremium
                  ? mustard.withOpacity(0.3)
                  : Colors.grey.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              leading: Icon(
                esPremium ? Icons.restaurant_menu : Icons.lock,
                color: esPremium ? navy : Colors.grey,
              ),
              title: Text(
                'Alimentación',
                style: TextStyle(color: esPremium ? navy : Colors.grey),
              ),
              subtitle: esPremium
                  ? null
                  : const Text('Disponible solo para usuarios premium'),
              onTap: esPremium
                  ? () {
                      // Aquí después se navega a la pantalla de alimentación
                    }
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}