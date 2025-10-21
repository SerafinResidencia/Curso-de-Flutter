import 'package:fl_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Sera',
      'last_name': 'Martinez',
      'email': 'sera@google.com',
      'password': '',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(title: Text('Inputs y Fomrs')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  helperText: 'Solo letras',
                  hintText: 'Nombre del usuario',
                  formProperty: 'first_name',
                  formValues: formValues,
                  //counterText: 'Almenos 3 letras',
                ),
                SizedBox(height: 30),

                CustomInputField(
                  labelText: 'Apellido',
                  helperText: 'Solo letras',
                  hintText: 'Apellido del usuario',
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                SizedBox(height: 30),

                CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Correo del usuario',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                SizedBox(height: 30),

                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña del usuario',
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                SizedBox(height: 30),

                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(
                      value: 'SuperUser',
                      child: Text('SuperUser'),
                    ),
                    DropdownMenuItem(
                      value: 'Developer',
                      child: Text('Developer'),
                    ),
                    DropdownMenuItem(
                      value: 'Jr. Developer',
                      child: Text('Jr. Developer'),
                    ),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                ),

                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(
                      FocusNode(),
                    ); //Permite ocultar el teclado al pulsar el botón.
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no válido');
                      return;
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
