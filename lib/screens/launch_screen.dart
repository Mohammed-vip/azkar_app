import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    debugPrint('init');
    Future.delayed(Duration(seconds: 3),(){
     // Navigator.pushNamed(context, '/home_screen');
      Navigator.pushReplacementNamed(context, '/home_screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    debugPrint('bulid');
  return Scaffold(
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
        child: Text('المسبحة الإلكترونية',
          style: GoogleFonts.arefRuqaa(
            fontWeight: FontWeight.w800,
            fontSize: 25,
            color: const Color(0xFF4C4C6D)),
        ),
      ),
    );
  }
}
