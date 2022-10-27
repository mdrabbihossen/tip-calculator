import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tips_calculator/widgets/tips_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffC5E4E7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // logo
            Container(
              width: double.infinity,
              height: size.height * 0.28,
              child: Center(
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                ),
              ),
            ),
            // tips items and calculation
            Container(
              width: double.infinity,
              height: size.height * 0.72,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // bill
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      left: 30,
                      right: 30,
                    ),
                    child: Text(
                      'Bill',
                      style: GoogleFonts.inconsolata(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5b777b),
                      ),
                    ),
                  ),
                  // bill input
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: size.height * 0.08,
                      decoration: BoxDecoration(
                        color: Color(0xffe8f0f1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.end,
                        cursorHeight: 30,
                        style: GoogleFonts.inconsolata(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff5b777b),
                        ),
                        cursorColor: Color(0xff5b777b),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          border: InputBorder.none,
                          hintText: '0.00',
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 10,
                            ),
                            child: SvgPicture.asset(
                              'assets/images/icon-dollar.svg',
                              width: size.width * 0.04,
                            ),
                          ),
                          hintStyle: GoogleFonts.inconsolata(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff5b777b),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  // select tip title
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.08),
                    child: Text(
                      'Select Tip %',
                      style: GoogleFonts.inconsolata(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5b777b),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.07,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: tipsItem(
                                tipsText: '5%',
                                color: Color(0xff00474f),
                                context: context,
                              ),
                            ),
                            SizedBox(width: 15),
                            Expanded(
                              child: tipsItem(
                                tipsText: '10%',
                                color: Color(0xff00474f),
                                context: context,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: tipsItem(
                                tipsText: '15%',
                                color: Color(0xff00474f),
                                context: context,
                              ),
                            ),
                            SizedBox(width: 15),
                            Expanded(
                              child: tipsItem(
                                tipsText: '25%',
                                color: Color(0xff00474f),
                                context: context,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: tipsItem(
                                tipsText: '50%',
                                color: Color(0xff00474f),
                                context: context,
                              ),
                            ),
                            SizedBox(width: 15),
                            Expanded(
                              child: tipsItem(
                                tipsText: 'Custom',
                                color: Color(0xffF3F8FB),
                                context: context,
                                textColor: Color(0xff5b777b),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
