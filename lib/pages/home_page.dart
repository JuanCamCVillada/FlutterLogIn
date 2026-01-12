import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_button.dart';
import 'package:flutter_application_1/components/my_textfield.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final userNameController = TextEditingController();

  final passwordController = TextEditingController();

  // SigIn method

  void SignUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              // Logo
              Icon(Icons.lock, size: 100),
              SizedBox(height: 50),
              // -----------------

              // Welcome Back
              Text(
                'Bienvenido Nuevamente, te extrañamos!!',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),

              // -----------------
              SizedBox(height: 50),
              // -----------------
              // Username TextField
              MyTextfield(
                controller: userNameController,
                hinText: 'Ingrese el Usuario',
                obscureText: false,
              ),

              // -----------------
              SizedBox(height: 25),
              // -----------------

              // Password TextField
              MyTextfield(
                controller: passwordController,
                hinText: 'Ingrese la Contraseña',
                obscureText: true,
              ),

              // -----------------
              SizedBox(height: 20),
              // -----------------

              // Forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text('Olvidaste la contraseña?')],
                ),
              ),

              // -----------------
              SizedBox(height: 15),
              // -----------------

              // Sign In Button
              MyButton(onTap: SignUserIn),

              // -----------------
              SizedBox(height: 20),
              // -----------------

              // Divider
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        child:
                        Divider(
                          thickness: 0.5,
                          color: Colors.blueGrey[400],
                        ),
                      ),
                  
                      Padding(
                        padding: const EdgeInsets.symmetric( horizontal: 10.0),
                        child: Text('O Continua con: '),
                      ),
                    ],
                  ),
                ),
              ),

              // -----------------
            ],
          ),
        ),
      ),
    );
  }
}
