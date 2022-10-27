import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:tips_calculator/constants/constant.dart';
import 'package:tips_calculator/widgets/custom_list_tile.dart';
import 'package:tips_calculator/widgets/custom_textfield.dart';

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
                      style: textStyle,
                    ),
                  ),
                  // bill input
                  customTextField(
                    textFieldHeight: size.height * 0.08,
                    imageWidth: size.width * 0.04,
                    prefixImage: 'assets/images/icon-dollar.svg',
                    hintText: '0.00',
                  ),
                  SizedBox(height: 10),
                  // select tip title
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.08),
                    child: Text(
                      'Select Tip %',
                      style: textStyle,
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
                  ),
                  SizedBox(height: 30),
                  // number of people
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.08,
                    ),
                    child: Text(
                      'Number of People',
                      style: textStyle,
                    ),
                  ),
                  // number of people input
                  customTextField(
                    textFieldHeight: size.height * 0.08,
                    imageWidth: size.width * 0.04,
                    prefixImage: 'assets/images/icon-person.svg',
                    hintText: '5',
                  ),
                  SizedBox(height: 20),
                  // calculate container
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.06,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.06,
                      vertical: size.height * 0.02,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff00474f),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        customListTile(
                          listTitle: 'Tip Amount',
                          listSubtitle: '/ person',
                          listTrailing: '\$4.27',
                        ),
                        customListTile(
                          listTitle: 'Total',
                          listSubtitle: '/ person',
                          listTrailing: '\$32.79',
                        ),
                        SizedBox(height: 20),
                        // reset button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Color(0xff26C2AD),
                            minimumSize:
                                Size(double.infinity, size.height * 0.07),
                          ),
                          child: Text(
                            'RESET',
                            style: textStyle.copyWith(
                              color: Color(0xff075553),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
