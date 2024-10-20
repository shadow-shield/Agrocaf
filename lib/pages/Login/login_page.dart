import 'package:agrocaf/controllers/auth_controller.dart';
import 'package:agrocaf/pages/RegistroUser/register_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginPage extends StatelessWidget {
  final AuthController _authController = Get.put(AuthController());
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView( // Agregar ScrollView aquí
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(80.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(80),
                    ),
                    child: Image.asset(
                      'images/agrocaf_logo.png',
                      height: 100.0,
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  'Inicio de\nSesión',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Color.fromRGBO(76, 140, 43, 10),
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Inicie sesión para continuar',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Color.fromRGBO(143, 142, 142, 1),
                        fontSize: 14,
                      ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                _buildTextField(context, 'Email', _emailController),
                SizedBox(height: 20),
                _buildTextField(context, 'Contraseña', _passwordController, obscureText: true),
                SizedBox(height: 40),
                Obx(() => _authController.isLoading.value
                    ? Center(child: CircularProgressIndicator())
                    : _buildLoginButton(context)),
                SizedBox(height: 20), // Agregar un poco de espacio al final
                Center(
                  child: GestureDetector(
                    onTap: () => Get.to(RegisterPage()),
                    child: Text(
                      '¿No tienes cuenta? Regístrate',
                      style: TextStyle(color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(BuildContext context, String hintText, TextEditingController controller, {bool obscureText = false}) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: hintText,
        filled: true,
        fillColor: Theme.of(context).colorScheme.surfaceContainerHighest,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return Center(
      child: FilledButton(
        onPressed: () {
          String email = _emailController.text.trim();
          String password = _passwordController.text.trim();
          _authController.login(email, password);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 11, 187, 79)),
          minimumSize: MaterialStateProperty.all(Size(500, 50)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Iniciar Sesión', style: TextStyle(fontSize: 18)),
            SizedBox(width: 10),
            Image.asset('images/siguiente.png'),
          ],
        ),
      ),
    );
  }
}
