import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tastysphere/style/main_style.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
          overlayColor: MaterialStatePropertyAll<Color>(AppStyle.colorOne),
          maximumSize: MaterialStatePropertyAll<Size>(Size.infinite),
          padding:
              MaterialStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.all(0))),
      onPressed: () {},
      child: Text(
        title,
        style: GoogleFonts.outfit(
          fontWeight: FontWeight.w900,
          fontSize: 24,
          color: AppStyle.textColorOne,
        ),
      ),
    );
  }
}
