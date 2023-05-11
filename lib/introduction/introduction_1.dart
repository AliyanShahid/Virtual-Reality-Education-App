import 'package:flutter/material.dart';

class introduction1 extends StatelessWidget {
  const introduction1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0xFFFFFFFF),
      child: Center(
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("images/logointro.png",height: 120,width: 110,),
                ],
              ),
            ),
            SizedBox(height: 70),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/intro1.png",height: 300, width: 265,),
                  SizedBox(height: 7),
                  Container(
                    child: Center(
                      child: Column(
                        children: [
                          Text('Create or Join a Meeting', style: TextStyle(
                              color: Color(0xFF3A3939),
                              fontSize: 25,
                              fontWeight: FontWeight.w600),),
                          SizedBox(height: 12),
                          Text('Enjoy studying in a “METAVERSE”\n with an immersive and interactive\n environment to get those “School\n                          Vibes”.', style: TextStyle(
                              color: Color(0xFF7A7474),
                              fontSize: 17,
                              fontWeight: FontWeight.w400,height:1.3),),
                        ],
                      ),
                    ),
                  ),
                ],

              ),
            )
          ],
        ),
      ),
    );
  }
}

