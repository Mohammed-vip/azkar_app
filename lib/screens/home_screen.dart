import 'package:azkar_app/screens/faqs_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int _count = 0;
  String _content = 'الْحَمْدُ للّه';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFFE8F6EF),
          child: const Icon(Icons.add,
            color: Color(0xFF4C4C6D),
          ),
          onPressed: () {
            setState(() {
              _count++;
            });
          }),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('مسبحة الأذكار',
          style: GoogleFonts.arefRuqaa(
            fontWeight: FontWeight.w800,
            fontSize: 27,
            color: const Color(0xFF4C4C6D)),
        ),
        iconTheme: const IconThemeData(color: Color(0xFF4C4C6D)),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/about_screen',
                  arguments: <String, dynamic>{'message': 'واجهة عن التطبيق'});
            },
            icon: const Icon(Icons.info),
            tooltip: 'عن التطبيق'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => const FAQsScreen(
                              message: 'واجهة الأسئلة الشائعة',
                            )));},
              icon: const Icon(Icons.question_answer_outlined)),
          PopupMenuButton<String>(
              onSelected: (selected) {
                if (selected != _content) {
                  setState(() {
                    _content = selected;
                    _count = 0;
                  });
                }
              },
              offset: const Offset(10, 50),
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color(0xFF4C4C6D)),
                  borderRadius: BorderRadius.circular(15)),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                      height: 0,
                      value: 'الْحَمْدُ للّه',
                      child: Text('الْحَمْدُ للّه',
                        style: GoogleFonts.arefRuqaa(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: const Color(0xFF4C4C6D)),
                      )),
                  const PopupMenuDivider(),
                  PopupMenuItem(
                      height: 0,
                      value: 'لَا إِلَهَ إِلَّا اللَّهُ',
                      child: Text('لَا إِلَهَ إِلَّا اللَّهُ',
                        style: GoogleFonts.arefRuqaa(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: const Color(0xFF4C4C6D)),
                      )),
                  const PopupMenuDivider(),
                  PopupMenuItem(
                      height: 0,
                      value: 'أستغفر الله',
                      child: Text('أستغفر الله',
                        style: GoogleFonts.arefRuqaa(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: const Color(0xFF4C4C6D)),
                      ))
                ];
              })
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
              Color(0xFFFFE194),
              Color(0xFF1B9C85),
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLLe4X793poe1f7vbT2Qo_jaUgRVms20udXkwOXVDfUu0yPoo17lmen_nGhM8fd4G8L6o&usqp=CAU')),
                shape: BoxShape.circle,
                color: Color(0xFFE8F6EF),
              ),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsetsDirectional.symmetric(
                  horizontal: 20, vertical: 10),
              height: 60,
              decoration: BoxDecoration(
                  color: const Color(0xFFE8F6EF),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _content,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.arefRuqaa(
                        fontWeight: FontWeight.w800,
                        fontSize: 25,
                        color: const Color(0xFF4C4C6D),
                      ),
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional.center,
                    color: const Color(0xFF1B9C85),
                    height: 60,
                    width: 40,
                    child: Text(
                      _count.toString(),
                      style: GoogleFonts.arefRuqaa(
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                        color: const Color(0xFF4C4C6D),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1B9C85),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.only(
                                  topStart: Radius.circular(15))),),
                        onPressed: () {
                          setState(() {
                            _count++;
                          });},
                        child: Text('تسبيح',
                            style: GoogleFonts.arefRuqaa(
                              fontWeight: FontWeight.w600,
                              fontSize: 19,
                              color: const Color(0xFFE8F6EF),
                            ))),),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFE8F6EF),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(15))),),
                        onPressed: () {
                          setState(() {
                            _count = 0;
                          });},
                        child: Text('إعادة',
                            style: GoogleFonts.arefRuqaa(
                              fontWeight: FontWeight.w600,
                              fontSize: 19,
                              color: const Color(0xFF4C4C6D),
                            ))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
