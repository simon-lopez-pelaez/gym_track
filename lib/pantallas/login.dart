import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _correoController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nombreController.dispose();
    _correoController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const Color cream = Color(0xFFF2EDE4);
    const Color navy = Color(0xFF2C3359);
    const Color mustard = Color(0xFFF2BE5C);
    const Color turquoise = Color(0xFF75B8BF);
    const Color mint = Color(0xFFDAEDE2);

    return Scaffold(
      backgroundColor: cream,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 32),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 360),
              child: Card(
                color: cream,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 10),
                      const Icon(Icons.fitness_center, size: 50, color: navy),
                      const SizedBox(height: 18),
                      const Center(
                        child: Text(
                          'EntrenaApp',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w800,
                            color: navy,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                      _LoginField(
                        controller: _nombreController,
                        labelText: 'Nombre de usuario',
                        icon: Icons.person,
                        fillColor: mint,
                      ),
                      const SizedBox(height: 18),
                      _LoginField(
                        controller: _correoController,
                        labelText: 'Correo',
                        icon: Icons.mail_outline,
                        keyboardType: TextInputType.emailAddress,
                        fillColor: mint,
                      ),
                      const SizedBox(height: 18),
                      _LoginField(
                        controller: _passwordController,
                        labelText: 'Contraseña',
                        icon: Icons.lock_outline,
                        obscureText: true,
                        fillColor: mint,
                      ),
                      const SizedBox(height: 26),
                      SizedBox(
                        height: 54,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                              context,
                              '/perfil',
                              arguments: {
                                'nombreUsuario': _nombreController.text,
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: mustard,
                            foregroundColor: navy,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            elevation: 0,
                          ),
                          child: const Text(
                            'Ingresar',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(foregroundColor: turquoise),
                          child: const Text(
                            '¿Olvidaste tu contraseña?',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginField extends StatelessWidget {
  const _LoginField({
    required this.controller,
    required this.labelText,
    required this.icon,
    this.obscureText = false,
    this.keyboardType,
    required this.fillColor,
  });

  final TextEditingController controller;
  final String labelText;
  final IconData icon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    const Color navy = Color(0xFF2C3359);
    const Color turquoise = Color(0xFF75B8BF);

    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: const TextStyle(color: navy, fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: labelText,
        labelStyle: const TextStyle(color: navy),
        prefixIcon: Icon(icon, color: turquoise),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: turquoise, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      ),
    );
  }
}
