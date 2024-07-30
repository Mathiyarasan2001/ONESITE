import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight weight;
  CustomText({
    super.key,
    required this.color,
    required this.size,
    required this.text,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style:
          GoogleFonts.inter(color: color, fontSize: size, fontWeight: weight),
    );
  }
}
