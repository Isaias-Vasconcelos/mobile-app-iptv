import 'package:flutter/material.dart';

class BackButtonSliverWidget extends StatelessWidget {
  final void Function()? onPressed;

  const BackButtonSliverWidget({super.key, required this.onPressed});

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
