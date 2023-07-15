import 'package:flutter/material.dart';
import 'package:login/src/routes.dart';

import '../src/text_field.dart';

class LoginPage extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController  passwordController = TextEditingController();

  final String email = "kevin.alva@unah.hn";
  final String password = "20192000180";


  LoginPage({super.key});

  void showSnackbar(BuildContext context, {required Text mensaje, bool? error}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: mensaje,
        duration: const Duration(seconds: 2),
        backgroundColor: error == true ?  Colors.green :  Colors.red,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Inicio'),
      ),
      body:  SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFieldCustom(
                labelText: const Text("Ingrese Usuario"),
                controlador: emailController,
              ),
              TextFieldCustom(
                labelText: const Text("Ingrese Contraseña"),
                keyboardType: TextInputType.visiblePassword,
                controlador: passwordController,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton:  FloatingActionButton(
            onPressed: () {
              // print(emailController.text + passwordController.text);

              if (emailController.text.isEmpty || passwordController.text.isEmpty){
                showSnackbar(context, mensaje: const Text("Por favor llenar todos los campos!"));
              }

              if (!emailController.text.contains("@")){
                showSnackbar(context, mensaje: const Text("Correo Invalido"));
              }

              if (emailController.text == email && passwordController.text == password){
                Navigator.pushNamed(context, MyRoutes.welcome.name);
                showSnackbar(context, mensaje: const Text("Correcto"),error: true);
              }else{
                showSnackbar(context, mensaje: const Text("Usuario o Contraseña Invalido!"));
              }


        },
            child: const Text("Login"),
          ),
    floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
    
  }
}

