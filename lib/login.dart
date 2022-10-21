import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swishh/otp.dart';
import 'package:swishh/two.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool check=false;
  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width/375;
    var height=(MediaQuery.of(context).size.height-38)/812;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                        Spacer(),
                        Container(
                          width: double.infinity,
                          height: height*419,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
                          ),
                          child: Column(
                            children: [
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

                                      hintText: "Mobile No.",
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold
                                      )
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: height*10),
                                  child: Text("Please enter your mobile number",style: TextStyle(color: Colors.red),)),
                              Row(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(left: width*30),
                                      child: Checkbox(
                                        activeColor: Color(0xff29AFC1),
                                          value: check, onChanged: (val){
                                        setState(() {
                                          check=val!;
                                        });
                                      })),
                                  Text('Keep me signed in')
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 24),
                                width: double.infinity,
                                child: Image.asset('assets/google.png'),
                              ),
                              SizedBox(height: height*30,),
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Already have an account? '),
                                  Text('Log In',style: TextStyle(
                                    color: Color(0xff29AFC1),
                                    fontWeight: FontWeight.bold,
                                  fontSize: 16),)
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(24),
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
                                      child: Center(child: Text('Sign Up',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600
                                      ),)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: height*276,
                      left: 0,
                      right: 0,
                      child: Center(child: Image.asset('assets/namep.png'))),
                  Positioned(
                      top: 0,
                      child: IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(Icons.arrow_back_ios_outlined)),)

                ],
              )),

            ],
          ),
        ),
      ),
    );
  }
}
