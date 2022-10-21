import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swishh/five.dart';
import 'package:swishh/two.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width/375;
    var height=(MediaQuery.of(context).size.height-38)/812;
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
              Image.asset('assets/fourpage.png',width: width*210,height: height*210,),
              SizedBox(height: height*57,),
              Text('What is your gender identity?',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(16),
                  child: InkWell(
                    splashColor: Colors.grey,
                    onTap: (){
                      Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: ScreenFive(),
                            inheritTheme: true,
                            ctx: context),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: height*56,
                      decoration: BoxDecoration(
                          color: Color(0xff29AFC1),
                          borderRadius: BorderRadius.circular(16)
                      ),
                      child: Center(child: Text('Female',style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                      ),)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(16),
                  child: InkWell(
                    splashColor: Colors.grey,
                    onTap: (){
                      Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: ScreenFive(),
                            inheritTheme: true,
                            ctx: context),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: height*56,
                      decoration: BoxDecoration(
                          color: Color(0xff29AFC1),
                          borderRadius: BorderRadius.circular(16)
                      ),
                      child: Center(child: Text('Male',style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                      ),)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(16),
                  child: InkWell(
                    splashColor: Colors.grey,
                    onTap: (){

                      Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: ScreenFive(),
                            inheritTheme: true,
                            ctx: context),
                      );

                    },
                    child: Container(
                      width: double.infinity,
                      height: height*56,
                      decoration: BoxDecoration(
                          color: Color(0xff29AFC1),
                          borderRadius: BorderRadius.circular(16)
                      ),
                      child: Center(child: Text('Others',style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                      ),)),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Container(child: Text('Prefer not to say')),
              )

            ],
          ),
        ),
      ),
    );
  }
}
