import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swishh/four.dart';
import 'package:swishh/six.dart';
import 'package:swishh/two.dart';


class ScreenFive extends StatefulWidget {
  const ScreenFive({Key? key}) : super(key: key);

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width/375;
    var height=(MediaQuery.of(context).size.height-38)/812;

    double value=10;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
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
                  Image.asset('assets/fivepage.png',width: width*200,height: height*200,),
                  SizedBox(height: height*70,),
                  Text('What is your name?',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: height*10,),
                  Text('Once added, you can configure them from the app'),
                  SizedBox(height: height*36,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width*23),
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffebebeb)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 30,vertical: height*18), isDense: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                          ),

                          hintText: "Name",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold
                          )
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: height*10),
                      child: Text("Please enter your name",style: TextStyle(color: Colors.red),)),
                  SizedBox(height: height*30,),
                  Text('Skip for now',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
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
                                child: ScreenSix(),
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
        )
      ),

    );
  }
}
