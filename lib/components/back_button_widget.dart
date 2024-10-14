import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  final void Function()? onPressed;

  const BackButtonWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Align(
      alignment: Alignment.topLeft,
      child: BackButton(
          style: const ButtonStyle(
              iconSize: WidgetStatePropertyAll(32),
              iconColor: WidgetStatePropertyAll(Colors.white)),
          onPressed: onPressed),
    ));
  }
}
