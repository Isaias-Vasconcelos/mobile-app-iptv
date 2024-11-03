import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptv_mobile/components/login/login_button_widget.dart';
import 'package:iptv_mobile/controllers/user_controller.dart';
import 'package:iptv_mobile/style/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late String userCode;
  late String password;
  final controller = UserController.instance;

  String? _userCodeValidator(String? value) {
    if (value!.isEmpty) return "Informe o seu Código de Usuário";
    if (value.length < 8) {
      return "Deve conter pelo menos 8 dígitos";
    }

    userCode = value;
    return null;
  }

  String? _passwordValidator(String? value) {
    if (value!.isEmpty) return "Informe sua Senha";
    if (value.length < 8) {
      return "Deve conter pelo menos 8 dígitos";
    }

    password = value;
    return null;
  }

  _login() async {
    if (_formKey.currentState!.validate()) {
      //Adicionar lógica de login
      var loginRespone = await controller.auth(userCode, password);

      if (loginRespone) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            'Login realizado com sucesso!',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
        ));

        Navigator.of(context).pushReplacementNamed("/home");
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          'Login inválido',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: _formKey,
                child: SizedBox(
                  child: Column(
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "ALPHA ",
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                    fontSize: 48,
                                    fontWeight: FontWeight.w800,
                                    color: AppColors().mainPurple))),
                        TextSpan(
                            text: "TV",
                            style: GoogleFonts.jost(
                                textStyle: const TextStyle(
                                    fontSize: 48,
                                    fontWeight: FontWeight.w800))),
                      ])),
                      Text("Aproveite seus Filmes e Series favoritos",
                          style: GoogleFonts.jost(
                              textStyle: const TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600))),
                      const SizedBox(
                        height: 70,
                      ),
                      TextFormField(
                        validator: (value) => _userCodeValidator(value),
                        keyboardType: TextInputType.number,
                        maxLength: 8,
                        decoration: InputDecoration(
                          labelText: 'Código de usuário:',
                          focusColor: AppColors().mainPurple,
                          prefixIcon: const Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        validator: (value) => _passwordValidator(value),
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        maxLength: 8,
                        decoration: InputDecoration(
                          labelText: 'Senha:',
                          prefixIcon: const Icon(Icons.lock),
                          focusColor: AppColors().mainPurple,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      LoginButtonWidget(onPressed: () {
                        _login();
                      }),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
