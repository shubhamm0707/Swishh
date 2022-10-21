import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swishh/three.dart';


class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {


  int count=1;
  int startAt=1;
  int endAt=22;

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
              Image.asset('assets/twopage.png',width: width*200,height: height*200,),
              Spacer(),
              Container(
                width: double.infinity,
                height: height*490,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight: Radius.circular(30))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: height*35,left: width*40),
                      child: Container(
                          child: Text('Routine',style: TextStyle(
                            fontSize: 28
                          ),)),
                    ),
                    SizedBox(height: height*35,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width*24),
                      padding:  EdgeInsets.symmetric(horizontal: width*1,vertical: height*1),
                      width: double.infinity,
                      height: height*46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Color(0xfffdd885),Color(0xfffde4aa),Color(0xfffeeec9),Color(0xfffef8e8)],
                          )
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: width*16,),
                            Text('How many'),
                            Spacer(),
                            InkWell(
                              onTap: (){

                                if(count>1)
                                  {
                                    setState(() {
                                      count--;
                                    });
                                  }

                              },
                              child: Container(
                                margin: EdgeInsets.only(right: width*16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(color: Colors.black)
                                ),
                                child: Icon(Icons.remove),
                              ),
                            ),
                            Container(
                              width: width*50,
                                child: Center(child: Text('${count}x'))),
                            InkWell(
                              onTap: (){
                                 setState(() {
                                   count++;
                                 });
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: width*16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color: Colors.black)
                                ),
                                child: Icon(Icons.add),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height*20,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width*24),
                      padding:  EdgeInsets.symmetric(horizontal: width*1,vertical: height*1),
                      width: double.infinity,
                      height: height*46,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Color(0xfffdd885),Color(0xfffde4aa),Color(0xfffeeec9),Color(0xfffef8e8)],
                          )
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: width*16,),
                            Text('Starts at'),
                            Spacer(),
                            InkWell(
                              onTap: (){
                                if(startAt>0)
                                  {
                                    setState(() {
                                      startAt--;
                                    });
                                  }
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: width*16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color: Colors.black)
                                ),
                                child: Icon(Icons.remove),
                              ),
                            ),
                            Container(

                                width: width*50,
                                child: Center(child: Text('${startAt}:00'))),
                            InkWell(
                              onTap: (){
                                if(startAt<24)
                                setState(() {

                                 startAt++;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: width*16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color: Colors.black)
                                ),
                                child: Icon(Icons.add),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height*20,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width*24),
                      padding:  EdgeInsets.symmetric(horizontal: width*1,vertical: height*1),
                      width: double.infinity,
                      height: height*46,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Color(0xfffdd885),Color(0xfffde4aa),Color(0xfffeeec9),Color(0xfffef8e8)],
                          )
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: width*16,),
                            Text('Ends at'),
                            Spacer(),
                            InkWell(
                              onTap: (){
                                if(endAt>0)
                                  {
                                    setState(() {
                                      endAt--;
                                    });
                                  }
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: width*16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color: Colors.black)
                                ),
                                child: Icon(Icons.remove),
                              ),
                            ),
                            Container(

                                width: width*50,
                                child: Center(child: Text('${endAt}:00'))),
                            InkWell(
                              onTap: (){
                                if(endAt<24)
                                  {
                                    setState(() {
                                      endAt++;
                                    });
                                  }
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: width*16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color: Colors.black)
                                ),
                                child: Icon(Icons.add),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
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
                                  child: ScreenThree(),
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
                            child: Center(child: Text('Continue',style: TextStyle(
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
