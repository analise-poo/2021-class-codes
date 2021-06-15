import 'package:blood_preassure_app/models/register_model.dart';
import 'package:blood_preassure_app/state/get/get_register_controller.dart';
import 'package:blood_preassure_app/ui/pages/bindings/home_page_binding.dart';
import 'package:blood_preassure_app/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class RegisterPage extends StatefulWidget {
  static String pageName = '/register';

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  final GetxRegisterController controller = Get.find<GetxRegisterController>();

  String name;
  String email;
  String password;
  String passwordConfirm;

  bool isObscure = true;
  bool isObscureConfirm = true;

  void toogleVisible() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  void toogleConfirmVisible() {
    setState(() {
      isObscureConfirm = !isObscureConfirm;
    });
  }

  void register() async {
    if (_formKey.currentState.validate()) {
      await controller
          .register(RegisterModel(name: name, password: password, email: email))
          .then((value) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Registrado com sucesso!')));

        Get.to(() => HomePage(), binding: HomePageBinding());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Registre-se'),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Nome',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (!GetUtils.isEmail(value)) return 'E-mail inválido!';
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: isObscure,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(fontSize: 20),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.visibility),
                          onPressed: toogleVisible,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value.length < 6)
                          return 'Senha deve ter mais do que 6 caracteres';
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: isObscureConfirm,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Confirme o password',
                        labelStyle: TextStyle(fontSize: 20),
                        suffixIcon: IconButton(
                          icon: Icon(isObscureConfirm
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: toogleConfirmVisible,
                        ),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value != password)
                          return 'Senha e confirmação de senha não batem!';
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(onPressed: register, child: Text('Registrar-se'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
