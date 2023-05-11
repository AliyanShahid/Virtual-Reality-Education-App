import 'package:flutter/material.dart';

class introduction2 extends StatelessWidget {
  const introduction2({Key? key}) : super(key: key);

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
            ),SizedBox(height: 15),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/intro2.png",height: 350, width: 400,),
                  SizedBox(height: 10),
                  Container(
                    child: Center(
                      child: Column(
                        children: [
                          Text('Chosse an Avatar', style: TextStyle(
                              color: Color(0xFF3A3939),
                              fontSize: 25,
                              fontWeight: FontWeight.w600),),
                          SizedBox(height: 10),
                          Text('Select an Avatar from a series of\n       Avatars that best suits you', style: TextStyle(
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

