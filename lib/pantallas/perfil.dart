import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color cream = Color(0xFFF2EDE4);
    const Color navy = Color(0xFF2C3359);
    const Color mustard = Color(0xFFF2BE5C);
    const Color turquoise = Color(0xFF75B8BF);
    const Color mint = Color(0xFFDAEDE2);

    // Datos de prueba, fijos en el código (aún no se pide lógica ni guardado real)
    const String nombre = 'Simón López';
    const int edad = 22;
    const double altura = 175; // cm
    const double peso = 70; // kg
    const double imc = 22.9; // valor de muestra, no calculado

    return Scaffold(
      backgroundColor: cream,
      appBar: AppBar(
        backgroundColor: navy,
        foregroundColor: cream,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Perfil', style: TextStyle(fontWeight: FontWeight.w700)),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 360),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 8),
                  Center(
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          width: 126,
                          height: 126,
                          decoration: const BoxDecoration(
                            color: mint,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.person, size: 68, color: navy),
                        ),
                        Container(
                          width: 38,
                          height: 38,
                          decoration: const BoxDecoration(
                            color: mustard,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.edit, color: navy, size: 20),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    nombre,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800, color: navy),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    '$edad años',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: turquoise, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 28),
                  _FilaDato(icono: Icons.height, etiqueta: 'Altura', valor: '$altura cm'),
                  const SizedBox(height: 12),
                  _FilaDato(icono: Icons.monitor_weight_outlined, etiqueta: 'Peso', valor: '$peso kg'),
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: mint,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Column(
                      children: [
                        Text('Tu IMC', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: navy)),
                        SizedBox(height: 8),
                        Text(
                          '$imc',
                          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800, color: navy),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 28),
                  SizedBox(
                    height: 54,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: mustard,
                        foregroundColor: navy,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        'Guardar cambios',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 54,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: navy,
                        side: const BorderSide(color: navy, width: 1.5),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                      ),
                      child: const Text(
                        'Cerrar sesión',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _FilaDato extends StatelessWidget {
  const _FilaDato({required this.icono, required this.etiqueta, required this.valor});

  final IconData icono;
  final String etiqueta;
  final String valor;

  @override
  Widget build(BuildContext context) {
    const Color navy = Color(0xFF2C3359);
    const Color turquoise = Color(0xFF75B8BF);
    const Color mint = Color(0xFFDAEDE2);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: mint,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(icono, color: turquoise),
          const SizedBox(width: 12),
          Text(etiqueta, style: const TextStyle(color: navy, fontWeight: FontWeight.w600)),
          const Spacer(),
          Text(valor, style: const TextStyle(color: navy, fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}