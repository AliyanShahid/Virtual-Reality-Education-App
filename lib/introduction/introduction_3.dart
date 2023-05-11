import 'package:flutter/material.dart';

class introduction3 extends StatelessWidget {
  const introduction3({Key? key}) : super(key: key);

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
            SizedBox(height: 60),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/intro3.png",height: 300, width: 265,),
                  SizedBox(height: 15),
                  Container(
                    child: Center(
                      child: Column(
                        children: [
                          Text('Share Resources', style: TextStyle(
                              color: Color(0xFF3A3939),
                              fontSize: 25,
                              fontWeight: FontWeight.w600),),
                          SizedBox(height: 10),
                          Text('Easily share resources to help you\n                with  your sessions', style: TextStyle(
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

