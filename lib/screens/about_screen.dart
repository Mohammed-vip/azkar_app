import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  String _message = 'لا يوجد رسالة';

  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute = ModalRoute.of(context);
    if (modalRoute != null) {
      //if (modalRoute.settings.arguments is Map<String, dynamic>) {
        Map<String, dynamic> map =
            modalRoute.settings.arguments as Map<String, dynamic>;
        if (map.containsKey('message')) {
          _message = map['message'];
        }
     // }
    }
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF4C4C6D))),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('عن التطبيق',
            style: GoogleFonts.arefRuqaa(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF4C4C6D)),
          ),
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
          child: Text(_message,
            style: GoogleFonts.arefRuqaa(
              fontWeight: FontWeight.w800,
              fontSize: 25,
              color: const Color(0xFF4C4C6D)),
          ),
        ));
  }
}
