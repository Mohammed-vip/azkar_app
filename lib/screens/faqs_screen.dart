import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FAQsScreen extends StatelessWidget {
  const FAQsScreen({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          title: Text('الأسئلة الشائعة',
            style: GoogleFonts.arefRuqaa(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF4C4C6D)),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Color(0xFF4C4C6D)),
        ),
        body: Container(
          alignment: AlignmentDirectional.center,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: AlignmentDirectional.topStart,
                  end: AlignmentDirectional.bottomEnd,
                  colors: [
                Color(0xFFFFE194),
                Color(0xFF1B9C85),
              ])),
          child: Text(message,
            style: GoogleFonts.arefRuqaa(
              fontWeight: FontWeight.w800,
              fontSize: 25,
              color: const Color(0xFF4C4C6D)),
          ),
        ));
  }
}
