import 'package:flutter/material.dart';

class ScreenTheme extends StatelessWidget {
  const ScreenTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 375;
    var height = (MediaQuery.of(context).size.height - 38) / 812;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
                height: height*80,
                decoration: BoxDecoration(
                  color: Colors.white,
                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                ),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_ios_outlined)),
                    Text('Make Your Theme',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(width*27),
                alignment: Alignment.center,
                width: double.infinity,
                height: height*300,
                child: Text("Every Morning I wake up and I am given a new opportunity to learn and grow.",
                textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
              ),

              Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Spacer(),
                        Container(
                          width: double.infinity,
                          height: height*339,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
                          ),
                          child: Column(
                            children: [
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: width*70,
                                    height: height*110,
                                    child: Column(
                                      children: [
                                        Image.asset('assets/musicbg.png',width: width*64,height: height*64,),
                                        SizedBox(height: height*6,),
                                        Text("Image",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                          fontSize: 12
                                        ),)
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: width*70,
                                    height: height*110,

                                    child: Column(
                                      children: [
                                        Image.asset('assets/musicbg.png',width: width*64,height: height*64,),
                                        SizedBox(height: height*6,),
                                        Text("Background Color",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12
                                          ),)
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: width*70,
                                    height: height*110,

                                    child: Column(
                                      children: [
                                        Image.asset('assets/musicbg.png',width: width*64,height: height*64,),
                                        SizedBox(height: height*6,),
                                        Text("Text Color",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12
                                          ),)
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: width*70,
                                    height: height*110,
                                    child: Column(
                                      children: [
                                        Image.asset('assets/musicbg.png',width: width*64,height: height*64,),
                                        SizedBox(height: height*6,),
                                        Text("Shadow Color",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12
                                          ),)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: width*70,
                                    height: height*110,

                                    child: Column(
                                      children: [
                                        Image.asset('assets/musicbg.png',width: width*64,height: height*64,),
                                        SizedBox(height: height*6,),
                                        Text("Image",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12
                                          ),)
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: width*70,
                                    height: height*110,

                                    child: Column(
                                      children: [
                                        Image.asset('assets/musicbg.png',width: width*64,height: height*64,),
                                        SizedBox(height: height*6,),
                                        Text("Background Color",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12
                                          ),)
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: width*70,
                                    height: height*110,

                                    child: Column(
                                      children: [
                                        Image.asset('assets/musicbg.png',width: width*64,height: height*64,),
                                        SizedBox(height: height*6,),
                                        Text("Text Color",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12
                                          ),)
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: width*70,
                                    height: height*110,

                                    child: Column(
                                      children: [
                                        Image.asset('assets/musicbg.png',width: width*64,height: height*64,),
                                        SizedBox(height: height*6,),
                                        Text("Shadow Color",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12
                                          ),)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(left: 24.0,right: 24,bottom: 24),
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
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: height*56,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16)
                                      ),
                                      child: Center(child: Text('Save',style: TextStyle(
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
                        )
                      ],
                    ),
                  )

              )
            ],
          ),
        ),
      ),
    );
  }
}
