import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swishh/settings.dart';
import 'package:swishh/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double moveY = 0;
  bool isOpen = false;

  int index = 0;
  bool left = false;
  bool right = false;
  double moveBottom = 0;
  bool isMenu = true;
  bool isTrue = true;
  bool isFav = false;
  bool isPlay=false;

  PageController pageController = PageController(initialPage: 0);

  showAlert() {
    var alertDialog = new AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: Colors.white.withOpacity(0.7),
        content: Container(
            width: 250,
            height: 250,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    child: Image.asset('assets/swipe.png'),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'Swipe up to read\naffirmations.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            )));

    showDialog(context: context, builder: (context) => alertDialog);
  }

  late Timer timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future(showAlert);

  timer= Timer(Duration(milliseconds: 1000), () => Navigator.pop(context));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
  }

  bool click=true;
  bool swipe=false;

  double pos=40;


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 375;
    var height = (MediaQuery.of(context).size.height - 38) / 812;
    Color color = Colors.red;

    List<Widget> list = [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Music",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Row(
                    children: [
                      Text(
                        "Play Music",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Switch(
                          activeColor: Color(0xff29AFC1),
                          value: isTrue,
                          onChanged: (val) {
                            setState(() {
                              isTrue = val;
                            });
                          })
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Material(
                elevation: 10,
                color: Color(0xff29AFC1),
                borderRadius: BorderRadius.circular(16),
                child: InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  splashColor: Colors.white,
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: height * 56,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(16)),
                    child: Center(
                        child: Text(
                      'Add your own music',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  "Favorites",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                )),
            Expanded(
              child: Container(
                width: width * 375,
                color: Colors.white,
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: height * 1),
                        child: ListTile(
                          leading: Image.asset(
                            'assets/musicbg.png',
                            width: width * 64,
                            height: height * 64,
                          ),
                          title: Text(
                            "Music Name",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          subtitle: Text(
                            "Description",
                            style: TextStyle(fontSize: 12),
                          ),
                          trailing: Image.asset(
                            'assets/bheart.png',
                            width: width * 20,
                            height: height * 18,
                            fit: BoxFit.contain,
                          ),
                        ),
                      );
                    }),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  "Recent 5 Music",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                )),
            Container(
              width: width * 375,
              height: height * 200,
              color: Colors.white,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 1),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/musicbg.png',
                          width: width * 64,
                          height: height * 64,
                        ),
                        title: Text(
                          "Music Name",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        subtitle: Text(
                          "Description",
                          style: TextStyle(fontSize: 12),
                        ),
                        trailing: Image.asset(
                          'assets/bheart.png',
                          width: width * 20,
                          height: height * 18,
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      Column(
        children: [


          Container(
            width: width*375,
            height: height*100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: width*375,
                    decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),),
    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width*50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          InkWell(
                              onTap:(){
                                if(!click) {
                                  setState(() {
                                    click = !click;
                                    swipe=!swipe;
                                    pos=width*44;
                                  });
                                }
                              },
                              child: Text("Categories"
                                ,style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),)),

                          Container(
                            width: 2,
                            height: height*27,
                            color: Colors.black,
                          ),

                          InkWell(
                              onTap: (){
                                if(click) {
                                  setState(() {
                                    click = !click;
                                    swipe=!swipe;
                                    pos=width*250;
                                  });
                                }
                              },

                              child: Text('Authors',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              ),)),

                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: height*26,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 250),
                    transform: Matrix4.translationValues(pos, 0, 0),
                    width: width*100,
                    height: height*6,
                    decoration: BoxDecoration(
                      color: Color(0xffFCCB5B),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),


          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  AnimatedPositioned(


                    top: click?300:0,
                    left: click?width*375:0,
                    curve: Curves.ease,
                    duration: Duration(milliseconds: 200),
                    child: Container(
                      width: width*375,
                      height: 600,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24.0, vertical: 10),
                                  child: Material(
                                    elevation: 10,
                                    color: Color(0xffe6e6e6),
                                    borderRadius: BorderRadius.circular(16),
                                    child: InkWell(
                                      customBorder: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      splashColor: Colors.white,
                                      onTap: () {},
                                      child: Container(
                                        width: double.infinity,
                                        height: height * 56,
                                        decoration: BoxDecoration(
                                            color: Color(0xffe6e6e6),
                                            borderRadius:
                                            BorderRadius.circular(16)),
                                        child:Center(
                                          child:  IntrinsicWidth(
                                            child: TextField(
                                              textAlign: TextAlign.center,
                                              decoration: InputDecoration(
                                                  contentPadding: EdgeInsets.symmetric(horizontal: 30,vertical: height*18), isDense: true,
                                                  border: InputBorder.none,
                                                  prefixIcon: Icon(Icons.search,color: Colors.black,),
                                                  hintText: "Search",
                                                  hintStyle: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight: FontWeight.bold
                                                  )
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.symmetric(vertical: 12),
                                    child: Text(
                                      "Favorites",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    )),
                                Container(
                                  width: width * 375,
                                  height: height * 200,
                                  color: Colors.white,
                                  child: ListView.builder(
                                      itemCount: 6,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: height * 1),
                                          child: ListTile(
                                            leading: Image.asset(
                                              'assets/musicbg.png',
                                              width: width * 64,
                                              height: height * 64,
                                            ),
                                            title: Text(
                                              "Author Name",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                            subtitle: Text(
                                              "Description",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            trailing: Image.asset(
                                              'assets/bheart.png',
                                              width: width * 20,
                                              height: height * 18,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                                Container(
                                    margin: EdgeInsets.symmetric(vertical: 12),
                                    child: Text(
                                      "Recent 5 Music",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    )),
                                Container(
                                  width: width * 375,
                                  height: height * 210,
                                  color: Colors.white,
                                  child: ListView.builder(
                                      itemCount: 5,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: height * 1),
                                          child: ListTile(
                                            leading: Image.asset(
                                              'assets/musicbg.png',
                                              width: width * 64,
                                              height: height * 64,
                                            ),
                                            title: Text(
                                              "Music Name",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                            subtitle: Text(
                                              "Description",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            trailing: Image.asset(
                                              'assets/bheart.png',
                                              width: width * 20,
                                              height: height * 18,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        );
                                      }),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    top: click?0:300,
                    left: click?0:-width*375,
                    curve: Curves.ease,
                    duration: Duration(milliseconds: 200),
                    child: Container(
                      width: width*375,
                      height: 600,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: height * 570,
                            child: ListView(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24.0, vertical: 10),
                                  child: Material(
                                    elevation: 10,
                                    color: Color(0xff29AFC1),
                                    borderRadius: BorderRadius.circular(16),
                                    child: Container(
                                      width: double.infinity,
                                      height: height * 56,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(16)),
                                      child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Personalise',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 110,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset('assets/small.png'),
                                      Image.asset('assets/small.png'),
                                      Image.asset('assets/small.png'),
                                    ],
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(
                                        left: width * 20,
                                        top: height * 30,
                                        bottom: height * 10),
                                    child: Text(
                                      "Most Popular",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Container(
                                  width: double.infinity,
                                  height: height * 134,
                                  child: SingleChildScrollView(
                                    physics: BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(
                                        left: width * 20,
                                        top: height * 15,
                                        bottom: height * 15),
                                    child: Text(
                                      "Take care of yourself",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Container(
                                  width: double.infinity,
                                  height: height * 134,
                                  child: SingleChildScrollView(
                                    physics: BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(
                                        left: width * 20,
                                        top: height * 15,
                                        bottom: height * 15),
                                    child: Text(
                                      "Breathe deeply",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Container(
                                  width: double.infinity,
                                  height: height * 134,
                                  child: SingleChildScrollView(
                                    physics: BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(
                                        left: width * 20,
                                        top: height * 15,
                                        bottom: height * 15),
                                    child: Text(
                                      "Look for what's good",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Container(
                                  width: double.infinity,
                                  height: height * 134,
                                  child: SingleChildScrollView(
                                    physics: BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                        Image.asset('assets/large.png'),
                                        SizedBox(
                                          width: width * 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                SizedBox(height: height*60,)


                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )





        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Themes",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Row(
                    children: [
                      Text(
                        "Unlock All",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Material(
                elevation: 10,
                color: Color(0xff29AFC1),
                borderRadius: BorderRadius.circular(16),
                child: InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  splashColor: Colors.white,
                  onTap: () {
                    // setState(() {
                    //   moveY += 630;
                    //   isOpen = false;
                    // });

                    Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: ScreenTheme(),
                          inheritTheme: true,
                          ctx: context),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: height * 56,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(16)),
                    child: Center(
                        child: Text(
                      'Customise current theme',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(top: 10),
                  width: width * 375,
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset(
                          'assets/box.png',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset('assets/box.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset('assets/box.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset('assets/box.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset('assets/box.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset(
                          'assets/box.png',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset('assets/box.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset('assets/box.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset('assets/box.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset('assets/box.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset(
                          'assets/box.png',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset('assets/box.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset('assets/box.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset('assets/box.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset('assets/box.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset(
                          'assets/box.png',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset('assets/box.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset('assets/box.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset('assets/box.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset('assets/box.png'),
                      ),
                    ],
                  )),
            )

          ],
        ),
      ),
    ];
    print(isOpen);
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height -20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/bg.png")
                    )
                  ),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(width*27),
                        child: Text('Every Morning I wake up and I am given a new opportunity to learn and grow.',
                          textAlign: TextAlign.center,style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                      Spacer(),
                      InkWell(
                          onTap: (){
                            setState(() {
                              isPlay=!isPlay;
                            });
                          },
                          child: isPlay? Image.asset("assets/play.png"):
                          Image.asset("assets/pause.png")),
                      SizedBox(height: height*20,),
                      Text("Song Name-Description",style: TextStyle(
                          color: Colors.white
                      ),),
                      Spacer(),
                    ],
                  ),),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height - 20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/pic.jpeg")
                      ),
                    ),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.all(width*27),
                          child: Text('Final task, smile please ',
                            textAlign: TextAlign.center,style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),),
                        ),
                        Spacer(),
                        InkWell(
                            onTap: (){
                              setState(() {
                                isPlay=!isPlay;
                              });
                            },
                            child: isPlay? Image.asset("assets/play.png"):
                            Image.asset("assets/pause.png")),
                        SizedBox(height: height*20,),
                        Text("Song Name-Description",style: TextStyle(
                            color: Colors.white
                        ),),
                        Spacer(),
                      ],
                    ),),
                ],
              ),
            ),




            Positioned(
              top: height * 15,
              left: -width * 8,
              right: 0,
              child: Center(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.transparent,
                          )),
                      Image.asset(
                        'assets/logowithname.png',
                        width: width * 140,
                        height: height * 50,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: ScreenSettings(),
                                  inheritTheme: true,
                                  ctx: context),
                            );
                          },
                          icon: Icon(
                            Icons.settings,
                            color: Color(0xff29AFC1),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -630,
              child: AnimatedContainer(
                width: width * 375,
                height: 630,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular((30))),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: PageView(
                            physics: NeverScrollableScrollPhysics(),
                          controller: pageController,
                          onPageChanged: (idx) {
                            setState(() {
                              index = idx;
                            });
                          },
                          children: list,
                        ),
                      ),
                    )
                  ],
                ),
                transform: Matrix4.translationValues(0, moveY, 0),
                duration: Duration(milliseconds: 250),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: width * 375,
                height: height * 120,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            transform:
                                Matrix4.translationValues(moveBottom, 0, 0),
                            child: left
                                ? Container(
                                    width: width * 400,
                                    height: height * 100,
                                    child: Image.asset(
                                      'assets/left.png',
                                      fit: BoxFit.fill,
                                    ))
                                : right
                                    ? Container(
                                        width: width * 400,
                                        height: height * 100,
                                        child: Image.asset(
                                          'assets/right.png',
                                          fit: BoxFit.fill,
                                        ))
                                    : Center(
                                        child: Image.asset(
                                        'assets/bottom.png',
                                        fit: BoxFit.fill,
                                      )))),
                    Positioned(
                        bottom: -height * 8 + height * 10,
                        left: 0,
                        right: 0,
                        child: Center(
                            child: InkWell(
                                onTap: () {
                                  if (isOpen && isMenu) {
                                    pageController.animateToPage(1,
                                        duration: Duration(milliseconds: 200),
                                        curve: Curves.ease);
                                    left = false;
                                    right = false;
                                    moveBottom = 0;
                                    isMenu = false;
                                  } else if (isOpen) {
                                    setState(() {
                                      moveY += 630;
                                      isOpen = false;
                                      left = false;
                                      right = false;
                                      moveBottom = 0;
                                      isMenu = true;
                                    });
                                  } else {
                                    setState(() {
                                      moveY -= 630;
                                      isOpen = true;
                                      left = false;
                                      right = false;
                                      moveBottom = 0;
                                      isMenu = false;
                                    });
                                    pageController.animateToPage(1,
                                        duration: Duration(milliseconds: 200),
                                        curve: Curves.ease);
                                  }
                                },
                                child: AnimatedSwitcher(
                                    duration: Duration(milliseconds: 500),
                                    child: !isMenu
                                        ? Container(
                                            key: Key('1'),
                                            child: Container(
                                              width: width * 50,
                                              height: height * 50,
                                              child: Image.asset(
                                                'assets/cut.png',
                                                fit: BoxFit.contain,
                                              ),
                                            ))
                                        : Container(
                                            key: Key('2'),
                                            child: Container(
                                              width: width * 50,
                                              height: height * 50,
                                              child: Image.asset(
                                                'assets/menu.png',
                                                fit: BoxFit.cover,
                                              ),
                                            )))))),
                    Positioned(
                        bottom: height * 10,
                        left: -270 * width,
                        right: 0,
                        child: Center(
                            child: InkWell(
                                onTap: () {
                                  if (!isOpen) {
                                  } else if (left) {
                                    setState(() {
                                      moveY += 630;
                                      isOpen = false;
                                      left = false;
                                      right = false;
                                      moveBottom = 0;
                                      isMenu = true;
                                    });
                                  } else {
                                    pageController.animateToPage(0,
                                        duration: Duration(milliseconds: 200),
                                        curve: Curves.ease);

                                    setState(() {
                                      left = true;
                                      right = false;
                                      isMenu = true;
                                      moveBottom = -width * 40;
                                    });
                                  }
                                },
                                child: AnimatedSwitcher(
                                    duration: Duration(milliseconds: 500),
                                    child: isOpen
                                        ? left
                                            ? Container(
                                                key: Key('3'),
                                                child: Container(
                                                  child: Container(
                                                    width: width * 40,
                                                    height: height * 40,
                                                    child: Image.asset(
                                                      'assets/cut.png',
                                                      fit: BoxFit.fitWidth,
                                                    ),
                                                  ),
                                                ))
                                            : Container(
                                                key: Key('1'),
                                                child: Container(
                                                  width: width * 40,
                                                  height: height * 40,
                                                  child: Image.asset(
                                                    'assets/music.png',
                                                    fit: BoxFit.contain,
                                                  ),
                                                ))
                                        : Container(
                                            key: Key('2'),
                                            child: Container(
                                              width: width * 40,
                                              height: height * 40,
                                              child: Image.asset(
                                                'assets/download.png',
                                                fit: BoxFit.contain,
                                              ),
                                            )))))),
                    Positioned(
                        bottom: height * 10,
                        left: 270 * width,
                        right: 0,
                        child: Center(
                            child: InkWell(
                                onTap: () {
                                  if (!isOpen) {
                                  } else if (right) {
                                    setState(() {
                                      moveY += 630;
                                      isOpen = false;
                                      left = false;
                                      right = false;
                                      moveBottom = 0;
                                      isMenu = true;
                                    });
                                  } else {
                                    pageController.animateToPage(2,
                                        duration: Duration(milliseconds: 200),
                                        curve: Curves.ease);
                                    setState(() {
                                      left = false;
                                      right = true;
                                      moveBottom = width * 40;
                                      isMenu = true;
                                    });
                                  }
                                },
                                child: AnimatedSwitcher(
                                    duration: Duration(milliseconds: 500),
                                    child: isOpen
                                        ? right
                                            ? Container(
                                                key: Key('3'),
                                                child: Container(
                                                  width: width * 40,
                                                  height: height * 40,
                                                  child: Image.asset(
                                                    'assets/cut.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ))
                                            : Container(
                                                key: Key('1'),
                                                child: Container(
                                                  width: width * 40,
                                                  height: height * 40,
                                                  child: Image.asset(
                                                    'assets/icon.png',
                                                    fit: BoxFit.contain,
                                                  ),
                                                ))
                                        : InkWell(
                                        onTap: (){
                                          setState(() {
                                            isFav=!isFav;
                                          });
                                        },
                                          child: Container(
                                              key: Key('2'),
                                              child: Container(
                                                width: width * 40,
                                                height: height * 40,
                                                child: isFav? Image.asset(
                                                  'assets/heart.png',
                                                  width: width * 40,
                                                  height: height * 40,
                                                  fit: BoxFit.scaleDown,
                                                ) :
                                                Image.asset(
                                                  'assets/bheart.png',
                                                  width: width * 40,
                                                  height: height * 40,
                                                  fit: BoxFit.scaleDown,
                                                )
                                                ,
                                              )),
                                        ))))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
