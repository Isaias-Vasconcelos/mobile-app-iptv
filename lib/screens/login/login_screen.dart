import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptv_mobile/components/login/login_button_widget.dart';
import 'package:iptv_mobile/style/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/Tv.png"),
            Text("LOGIN"),
            Text("INSIRA SUA CONTA"),
            const SizedBox(
              height: 50,
            ),
            //Compentizar os InputDecorations
            //Componentizar os TextStyles
            Form(
              key: _formKey,
              child: SizedBox(
                width: 240,
                child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child:Text(
                    "Código de usuário",
                    style: GoogleFonts.jost(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700
                      )
                    ),)
                  ),
                  
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors().mainPurple,
                      prefixIcon: const Icon(
                        Icons.person_outline_outlined,
                        color: Colors.white,
                        ),
                      border: const UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)))
                      ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                    "Senha",
                     style: GoogleFonts.jost(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700
                      )
                    )),
                  ),
                 
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors().mainPurple,
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        color: Colors.white,
                        ),
                      border: const UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)))
                      ),
                    ),
                  const SizedBox(
                    height: 50,
                  ),
                  LoginButtonWidget(onPressed: (){})

                ],
              ),
            ))
          ],
        ) ,
      ),
    );
  }
}
