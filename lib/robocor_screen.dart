import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

//import 'package:connectivity_plus/connectivity_plus.dart';

class RoboCor extends StatelessWidget {
  const RoboCor({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "DECODE",
      "LFR",
      "ROBOSOCCER",
      "PRESENTARIO",
      "INIT_RC",
      "PROJECT SYMPOSIUM",
      "ARDUINO CLASH",
      "RUGGED RAGE",
      "SPARDHA",
    ];

    final List<Widget> images = [
      Container(
        alignment: Alignment.bottomCenter,
        height: 150,
        width: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: Colors.black.withOpacity(0.25),
      ),
        child:ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Image.network('https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/rectangle-1.png?alt=media&token=a76187e2-952f-4e79-9433-047f7fc4f477',
            height: 330,
            width: 400,
            fit: BoxFit.fill,
          ),
        ),
      ),
      Container(
        alignment: Alignment.center,
        height: 150,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.black.withOpacity(0.25),
        ),
        child:ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Image.network('https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/rectangle-2-bg.png?alt=media&token=eb6a1175-12f8-4e9f-8d46-45dd9ed2d25f',
            height: 330,
            width: 400,
            fit: BoxFit.fill,
          ),
        ),
      ),

      Container(
        alignment: Alignment.center,
        height: 150,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.black.withOpacity(0.25),
        ),
        child:ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Image.network('https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/rectangle-3-bg.png?alt=media&token=52fd7503-af58-4684-842f-5e2a9860704b',
            height: 330,
            width: 400,
            fit: BoxFit.fill,
          ),
        ),
      ),

      Container(
        alignment: Alignment.center,
        height: 150,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.black.withOpacity(0.25),
        ),
        child:ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Image.network('https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/rectangle-4-bg.png?alt=media&token=27b38a27-f26a-4c31-8d50-506927dd9c4f',
            height: 330,
            width: 400,
            fit: BoxFit.fill,
          ),
        ),
      ),

      Container(
        alignment: Alignment.center,
        height: 150,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.black.withOpacity(0.25),
        ),
        child:ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Image.network('https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/rectangle-5-bg.png?alt=media&token=6b5aa0e0-2999-4209-b1a4-bbde3bd19cc8',
            height: 330,
            width: 400,
            fit: BoxFit.fill,
          ),
        ),
      ),

      Container(
        alignment: Alignment.center,
        height: 150,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.black.withOpacity(0.25),
        ),
        child:ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Image.network('https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/rectangle-6-bg.png?alt=media&token=3c3cfe8b-88f7-4108-9f57-8aed5faeb2a2',
            height: 330,
            width: 400,
            fit: BoxFit.fill,
          ),
        ),
      ),

      Container(
        alignment: Alignment.center,
        height: 150,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.black.withOpacity(0.25),
        ),
        child:ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Image.network('https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/rectangle-7-bg.png?alt=media&token=c3b6e3ad-8364-4a67-973f-fd00f09fb1c1',
            height: 330,
            width: 400,
            fit: BoxFit.fill,
          ),
        ),
      ),

      Container(
        alignment: Alignment.center,
        height: 150,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.black.withOpacity(0.25),
        ),
        child:ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Image.network('https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/rectangle-8-bg.png?alt=media&token=c2333843-1260-4429-a602-ca77b7f8d432',
            height: 330,
            width: 400,
            fit: BoxFit.fill,
          ),
        ),
      ),

      Container(
        alignment: Alignment.center,
        height: 150,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.black.withOpacity(0.25),
        ),
        child:ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Image.network('https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/rectangle-9-bg.png?alt=media&token=a6a350f4-da51-49bb-b51a-450002b48a14',
            height: 330,
            width: 400,
            fit: BoxFit.fill,
          ),
        ),
      ),
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Color.fromRGBO(77, 55, 73, 1),
        ),
      ),
      body:SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.4,0.6],
                  colors: [
                    Color.fromRGBO(77, 55, 73, 1),

                    Color.fromRGBO(135, 11, 32, 1),

                  ])
          ),

          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),

                    child: Text(
                      "ROBOCOR",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    alignment: Alignment.center,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(8.0,2.0,8.0,8.0),

                      child: Text(
                        "Welcome to biggest ROBOTICS event of Karnataka",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 650,
                  child: VerticalCardPager(
                    textStyle:TextStyle(color:Colors.white,fontSize: 5, fontWeight: FontWeight.w600),
                    titles: titles,
                    images: images,
                    onPageChanged: (page) {},
                    align: ALIGN.CENTER,
                    onSelectedItem: (index) {},

                  ),
                ),

              ],
            ),
          ),

        ),
      ),

    );
  }
}