import 'package:flutter/material.dart';

class CardImageWidget extends StatelessWidget {

  String imageUrl;

  CardImageWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: Stack(
        children: [
          Center(
            child: Image.network(
              imageUrl,
              width: 250,
              height: 320,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Row(
              children: [
                // Degradê na esquerda
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.black54,
                          Colors.transparent
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 250,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Colors.black54,
                          Colors.transparent
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
