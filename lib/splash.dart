import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:v_learn/demoscreen1.dart';



class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();

}
class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }
  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Introduction()));
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF463263),
      body: Container(

        // constraints: const BoxConstraints.expand(),
        height: double.infinity,
        width: double.infinity,
        decoration:const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/splashbkg.png"),fit: BoxFit.contain),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png",height: 157.0, width: 157.0,),
            Container(
              alignment: Alignment.center,
              child: Text('V leaRn',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w900,color: Color(0xFFFFFFFF)),),
            ),
            Container(
              alignment: Alignment.center,
              child: Text('Giving You School Vibe',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Color(0xFFFFFFFF)),),
            ),
          ],
        ),
      ),
    );
  }
}