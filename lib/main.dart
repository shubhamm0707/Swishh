import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swishh/home.dart';
import 'package:swishh/login.dart';
import 'package:swishh/otp.dart';
import 'package:swishh/two.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width/375;
    var height=MediaQuery.of(context).size.height/812;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Color(0xfffdd885),Color(0xfffde4aa),Color(0xfffeeec9),Color(0xfffef8e8)],
            )
          ),
          child: Column(
            children: [
              Expanded(child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: height*106,),
                        Image.asset('assets/logop.png',width: width*194,height:height*194),
                        SizedBox(height: height*50,),
                        Container(
                          width: width*159,
                          height: height*14,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        SizedBox(height: height*32,),
                        Container(
                          width: width*120,
                          height: height*10,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        SizedBox(height: height*10,),
                        Container(
                          width: width*72,
                          height: height*10,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        )

                      ],
                    ),
                  ),
                  Positioned(
                      top: height*276,
                      left: 0,
                      right: 0,
                      child: Center(child: Image.asset('assets/namep.png')))
                ],
              )),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Material(
                  elevation: 10,
                  color: Color(0xff29AFC1),
                  borderRadius: BorderRadius.circular(16),
                  child: InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    splashColor: Colors.white,
                    onTap: (){


                      Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: OtpScreen(),
                            inheritTheme: true,
                            ctx: context),
                      );


                    },
                    child: Container(
                      width: double.infinity,
                      height: height*56,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16)
                      ),
                      child: Center(child: Text('Get Started',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),)),
                    ),
                  ),
                ),
              )
              // Container(
              //   child: new Material(
              //     child: new InkWell(
              //       onTap: (){print("tapped");},
              //       child: new Container(
              //         width: 100.0,
              //         height: 100.0,
              //       ),
              //     ),
              //     color: Colors.transparent,
              //   ),
              //   color: Colors.orange,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

