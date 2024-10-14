import 'package:flutter/material.dart';

class InputTextListContentWidget extends StatefulWidget {
  const InputTextListContentWidget({super.key});

  @override
  State<InputTextListContentWidget> createState() =>
      _InputTextListContentWidgetState();
}

class _InputTextListContentWidgetState
    extends State<InputTextListContentWidget> {
  @override
  Widget build(BuildContext context) {
    return const SliverPadding(
      padding: EdgeInsets.only(left: 35, right: 35, bottom: 20),
      sliver: SliverToBoxAdapter(
          child: SizedBox(
        height: 39,
        child: TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromRGBO(49, 49, 49, 1),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              suffixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              labelText: "Pesquisar"),
          style: TextStyle(fontSize: 15),
        ),
      )),
    );
  }
}
