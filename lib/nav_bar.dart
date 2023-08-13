import 'package:corsit_app/homescreen.dart';
import 'package:corsit_app/our_team.dart';
import 'package:corsit_app/robocor_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart' show FontAwesomeIcons;


class Navbar extends StatefulWidget {
  const Navbar({Key? key}): super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}
class _NavbarState extends State<Navbar> {
  double screenHeight = 0;
  double screenWidth = 0;

  Color primary = const Color(0xffeef444c);

  int currentIndex = 0;

  List<IconData> navigationIcons = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.userGroup,
    FontAwesomeIcons.robot,
  ];

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          const HomeScreen(),
          const OurTeam(),
          const RoboCor(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: const EdgeInsets.only(
          left: 12,
          right: 12,
          bottom: 24,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(40)),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(int i = 0; i < navigationIcons.length; i++)...<Expanded>{
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = i;
                      });
                    },
                    child: Container(
                      height: screenHeight,
                      width: screenWidth,
                      color: Colors.white,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              navigationIcons[i],
                              color: i == currentIndex ? primary : Colors.black54,
                              size: i == currentIndex ? 30 : 26,
                            ),
                            i == currentIndex ? Container(
                              margin: const EdgeInsets.only(top: 6),
                              height: 3,
                              width: 22,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(40)),
                                color: primary,
                              ),
                            ) : const SizedBox(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              }
            ],
          ),
        ),
      ),
    );
  }
}
