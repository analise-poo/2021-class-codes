import 'package:blood_preassure_app/models/login_model.dart';
import 'package:blood_preassure_app/state/get/getx_login_controller.dart';
import 'package:blood_preassure_app/ui/pages/bindings/home_page_binding.dart';
import 'package:blood_preassure_app/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class LoginPage extends StatefulWidget {
  static String pageName = '/login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final GetxLoginController controller = Get.find<GetxLoginController>();

  String email;
  String password;

  bool isObscure = true;

  void toogleVisible() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  void login() async {
    if (_formKey.currentState.validate()) {
      await controller
          .login(LoginModel(password: password, email: email))
          .then((value) {
        Get.to(() => HomePage(), binding: HomePageBinding());
      }).onError((error, stackTrace) {
        print(error);
        Get.snackbar(
          'Erro',
          'Verifique seus dados!',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
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
            Text('Acesse'),
            Form(
              key: _formKey,
              child: Column(
                children: [
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
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(onPressed: login, child: Text('Acessar'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
