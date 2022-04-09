import 'package:flutter/material.dart';

class Bu extends StatelessWidget {
  final List<String> splitWords;
  final String type;
  final String definition;
  final String example;

  const Bu({
    Key? key,
    required this.splitWords,
    required this.type,
    required this.definition,
    required this.example,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bullet = "\u2022";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('BU1'),
        const SizedBox(
          height: 12,
        ),
        Text(
          splitWords.join(bullet),
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: -1,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          type,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          definition,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          example,
          style: TextStyle(color: Colors.white, fontSize: 20),
        )
      ],
    );
  }
}
