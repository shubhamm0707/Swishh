import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swishh/home.dart';

class ScreenSettings extends StatefulWidget {
  const ScreenSettings({Key? key}) : super(key: key);

  @override
  State<ScreenSettings> createState() => _ScreenSettingsState();
}

class _ScreenSettingsState extends State<ScreenSettings> {

  showAlert(BuildContext context,var width,var height)
  {

    var alertDialog=new AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: Colors.white.withOpacity(0.8),
        content: Container(
          width: width*300,
          height: height*356,
          child: Column(
            children: [
              Image.asset('assets/logout.png',width: width*124,height: height*124,),
              SizedBox(height: height*20,),
              Text("Are you sure you want\nto log out?",textAlign: TextAlign.center,),
              Spacer(),
              Container(
                width: width*220,
                height: height*40,
                decoration: BoxDecoration(
                  color: Color(0xffE63D43),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Text("Log out",style: TextStyle(
                  color: Colors.white
                ),)),
              ),
              SizedBox(height: height*20,),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Text("Cancel",style: TextStyle(
                  color: Color(0xffE63D43),
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),),
              ),
            ],
          ),
        )
    );

    showDialog(context: context, builder: (context)=>alertDialog);

  }


  Widget listTile(String text)
  {
    return ListTile(
      leading: Icon(Icons.image_rounded),
      title: Text(text,style: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.bold
      ),),
      trailing: Icon(Icons.arrow_forward_ios,size: 12,color: Colors.black,),
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 375;
    var height = (MediaQuery.of(context).size.height - 38) / 812;




    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: height*810,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height*80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(onPressed: (){

                            Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: HomeScreen(),
                                  inheritTheme: true,
                                  ctx: context),
                            );


                          }, icon: Icon(Icons.arrow_back_ios_outlined)),
                          Text('Settings',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),)
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width*12),
                        child: InkWell(
                          onTap: (){
                            showAlert(context,width,height);
                          },
                          child: Text('Logout',style: TextStyle(
                              color: Color(0xffE63D43),
                              fontSize: 12,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: width*24.0,right: width*24.0,bottom: height*20 ),
                  child: Material(
                    elevation: 10,
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
                            borderRadius: BorderRadius.circular(16),
                            gradient: LinearGradient(
                              colors: [Color(0xfff6c51f),Color(0xfff1c01d),Color(0xfffbf6a7),],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight
                            )
                        ),
                        child: Center(child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/premium.png',width: width*23,height: height*18,),
                            SizedBox(width: width*10,),
                            Text('Go Premium',style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        )),
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: width*20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Settings",style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),),
                      listTile("General"),
                      listTile("Option 1"),
                      listTile("Option 2"),
                      listTile("Option 3"),
                    ],
                  ),
                ),

                SizedBox(height: height*10,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: width*20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Your Affirmations",style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),),
                      listTile("Collections"),
                      listTile("Option 1"),
                      listTile("Option 2"),
                      listTile("Option 3"),
                      listTile("Option 4"),
                    ],
                  ),
                ),

                Spacer(),
                Center(child: Image.asset('assets/logowithname.png',width: width*140,height: height*50,),),
                Spacer(),
                Spacer(),Spacer(),Spacer()
              ],
            ),
          )
        ),
      ),
    );
  }
}
