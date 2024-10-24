import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButtonWidget extends StatelessWidget {
  final void Function() onPressed;

  const LoginButtonWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ButtonGradientContainer(
          buttonChild: TextButton(
        onPressed: onPressed,
        child: const Text(
          'Entrar',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
      )),
    );
  }
}

class ButtonGradientContainer extends StatelessWidget {
  final Widget buttonChild;
  final Color firstGradientButtonColor = const Color.fromARGB(255, 49, 15, 122);
  final Color secondGradientButtonColor = const Color.fromARGB(255, 69, 2, 214);

  const ButtonGradientContainer({super.key, required this.buttonChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(colors: [
            firstGradientButtonColor,
            secondGradientButtonColor,
          ])),
      child: buttonChild,
    );
  }
}
