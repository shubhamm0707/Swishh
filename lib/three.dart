import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swishh/four.dart';
import 'package:swishh/two.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

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
              Image.asset('assets/threepage.png',width: width*310,height: height*310,),
              Text('Add a widget your home screen',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: height*10,),
              Text('Once added, you can configure them from the app'),
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
                            child: ScreenFour(),
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
                      child: Center(child: Text('Got it!',style: TextStyle(
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
      ),
    );
  }
}
