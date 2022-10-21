import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swishh/four.dart';
import 'package:swishh/home.dart';
import 'package:swishh/two.dart';


class ScreenSix extends StatefulWidget {
  const ScreenSix({Key? key}) : super(key: key);

  @override
  State<ScreenSix> createState() => _ScreenSixState();
}

class _ScreenSixState extends State<ScreenSix> {

  bool first=false;
  bool second=false;

  bool third=false;
  bool fourth=false;

  bool fifth=false;
  bool sixth=false;

  bool seventh=false;
  bool eightth=false;


  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width/375;
    var height=(MediaQuery.of(context).size.height-38)/812;

    print(height*322);
    print(height*490);
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_ios_outlined)),
                  Image.asset('assets/logowithname.png',width: width*140,height: height*50,),
                  IconButton(onPressed:null, icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.transparent,)),
                ],
              ),
              Image.asset('assets/sixpage.png',width: width*222,height: height*222,),
              Spacer(),
              Container(
                width: double.infinity,
                height: height*490,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight: Radius.circular(30))
                ),
                child: Column(
                  children: [
                    SizedBox(height: height*35,),
                    Text('What areas of your life would you\nlike to improve?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              first=!first;
                            });
                          },
                          child: Container(
                            width: width*160,
                            height: height*40,
                            decoration: BoxDecoration(
                                color: first?Color(0xffCB86E8) : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Color(0xffCB86E8)
                                )
                            ),
                            child: Center(child: Text('Self Care',style: TextStyle(
                                color: !first?Colors.black : Colors.white
                            ),)),
                          ),
                        ),
                        SizedBox(width: width*8,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              second=!second;
                            });
                          },
                          child: Container(
                            width: width*160,
                            height: height*40,
                            decoration: BoxDecoration(
                                color: second?Color(0xffCB86E8) : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Color(0xffCB86E8)
                                )
                            ),
                            child: Center(child: Text('Personal Growth',style: TextStyle(
                                color: !second?Colors.black : Colors.white
                            ),)),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: height*10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              third=!third;
                            });
                          },
                          child: Container(
                            width: width*160,
                            height: height*40,
                            decoration: BoxDecoration(
                                color:third?Color(0xffCB86E8) : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Color(0xffCB86E8)
                                )
                            ),
                            child: Center(child: Text('Stress and Anxiety',style: TextStyle(
                                color: !third?Colors.black : Colors.white
                            ),)),
                          ),
                        ),
                        SizedBox(width: width*8,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              fourth=!fourth;
                            });
                          },
                          child: Container(
                            width: width*160,
                            height: height*40,
                            decoration: BoxDecoration(
                                color: fourth?Color(0xffCB86E8) : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Color(0xffCB86E8)
                                )
                            ),
                            child: Center(child: Text('Body Positivity',style: TextStyle(
                                color: !fourth?Colors.black : Colors.white
                            ),)),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: height*10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              fifth=!fifth;
                            });
                          },
                          child: Container(
                            width: width*160,
                            height: height*40,
                            decoration: BoxDecoration(
                                color: fifth?Color(0xffCB86E8) : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Color(0xffCB86E8)
                                )
                            ),
                            child: Center(child: Text('Positive Thinking',style: TextStyle(
                                color: !fifth?Colors.black : Colors.white
                            ),)),
                          ),
                        ),
                        SizedBox(width: width*8,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              sixth=!sixth;
                            });
                          },
                          child: Container(
                            width: width*160,
                            height: height*40,
                            decoration: BoxDecoration(
                                color: sixth?Color(0xffCB86E8) : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Color(0xffCB86E8)
                                )
                            ),
                            child: Center(child: Text('Relationships',style: TextStyle(
                                color: !sixth?Colors.black : Colors.white
                            ),)),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: height*10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              seventh=!seventh;
                            });
                          },
                          child: Container(
                            width: width*160,
                            height: height*40,
                            decoration: BoxDecoration(
                                color: seventh?Color(0xffCB86E8) : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Color(0xffCB86E8)
                                )
                            ),
                            child: Center(child: Text('Hapiness',style: TextStyle(
                                color: !seventh?Colors.black : Colors.white
                            ),)),
                          ),
                        ),
                        SizedBox(width: width*8,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              eightth=!eightth;
                            });
                          },
                          child: Container(
                            width: width*160,
                            height: height*40,
                            decoration: BoxDecoration(
                                color: eightth?Color(0xffCB86E8) : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Color(0xffCB86E8)
                                )
                            ),
                            child: Center(child: Text('Gratitude',style: TextStyle(
                                color: !eightth?Colors.black : Colors.white
                            ),)),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: height*10,),
                    Spacer(),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(16),
                        child: InkWell(
                          splashColor: Colors.grey,
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                          },
                          child: Container(
                            width: double.infinity,
                            height: height*56,
                            decoration: BoxDecoration(
                                color: Color(0xff29AFC1),
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: const Center(child: Text('Continue',style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
