import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptv_mobile/components/login/login_button_widget.dart';
import 'package:iptv_mobile/style/app_colors.dart';
import 'package:iptv_mobile/style/login/decorations/text_form_field_decoration.dart';
import 'package:iptv_mobile/style/login/text_above_input_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  String? _userCodeValidator(String? value) {
    if (value!.isEmpty) return "Informe o seu Código de Usuário";
    if (value.length < 8) {
      return "Deve conter pelo menos 8 digitos";
    }
    return null;
  }

  String? _passwordValidator(String? value) {
    if (value!.isEmpty) return "Informe sua Senha";
    if (value.length < 8) {
      return "Deve conter pelo menos 8 digitos";
    }
    return null;
  }

  _login() {
    if (_formKey.currentState!.validate()) {
      //Adicionar lógica de login

      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          'Login realizado com sucesso!',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ));
      Navigator.of(context).pushReplacementNamed("/home");
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
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/Tv.png"),
              Text(
                "INSIRA SUA CONTA",
                style:
                    GoogleFonts.jost(textStyle: const TextStyle(fontSize: 27)),
              ),
              const SizedBox(
                height: 60,
              ),
              Form(
                  key: _formKey,
                  child: SizedBox(
                    width: 240,
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Código de usuário",
                              style: TextAboveInputStyle().textStyle,
                            )),
                        TextFormField(
                          validator: (value) => _userCodeValidator(value),
                          keyboardType: TextInputType.number,
                          maxLength: 8,
                          decoration: TextFormFieldDecoration(
                              prefixIcon: const Icon(
                            Icons.person_outline,
                            color: Colors.white,
                          )).decoration,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Senha",
                              style: TextAboveInputStyle().textStyle),
                        ),
                        TextFormField(
                          validator: (value) => _passwordValidator(value),
                          keyboardType: TextInputType.number,
                          obscureText: true,
                          maxLength: 8,
                          decoration: TextFormFieldDecoration(
                              prefixIcon: const Icon(
                            Icons.lock_outline,
                            color: Colors.white,
                          )).decoration,
                        ),
                        const SizedBox(
                          height: 68,
                        ),
                        LoginButtonWidget(onPressed: () {
                          _login();
                        }),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
