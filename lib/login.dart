import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'homePage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passwordVisible=true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
       child: Center(
         child: Column(
         children: [
           Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Image.asset('images/logointro.png',height: 80,width: 80,),
                 SizedBox(width:230),
                 Container(
                   child: Padding(
                     padding: const EdgeInsets.only(bottom: 30.0),
                     child: Row(
                       children: [
                         Text('Sign Up',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,color: Color(0xFF463263)),),
                       ],
                     ),
                   ),
                 ),
               //  Image.asset("images/logointro.png",height: 90,width: 100,),
               ],
             ),
           ),
           SizedBox(height:60),
           // Login
           Text('Login',style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700,color: Color(0xFF463263)),),
           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20.0),
             child: Container(

               decoration: BoxDecoration(
                 color: Color(0xFFF2F1F8),
                 border: Border.all(color: Color(0XFFF2F1F8)),
                 borderRadius: BorderRadius.circular(20)
               ),
               child: Padding(
                 padding: const EdgeInsets.only(left: 10.0),
                 child: TextField(
                   decoration: InputDecoration(
                     border: InputBorder.none,
                   // prefixIcon: Icon(Icons.person),
                     icon: Image.asset( //        <-- Image
                       'images/profilelogin.png',height: 30,fit: BoxFit.cover,),
                     hintText:'Email Address',
                     hintStyle: TextStyle(color: Color(0xFF463263)),
                   ),
                 ),
               ),

             ),
           ),
           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20.0),
             child: Container(

               decoration: BoxDecoration(
                   color: Color(0xFFF2F1F8),
                   border: Border.all(color: Color(0XFFF2F1F8)),
                   borderRadius: BorderRadius.circular(20)
               ),
               child: Padding(
                 padding: const EdgeInsets.only(left: 10.0),
                 child: TextField(
                   obscureText: passwordVisible,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     // prefixIcon: Icon(Icons.person),
                     icon: Image.asset( //        <-- Image
                       'images/lock.png',height: 30,fit: BoxFit.cover,),
                     hintText:'Password',
                     hintStyle: TextStyle(color: Color(0xFF463263)),

                     suffixIcon: IconButton(
                       icon: Icon(passwordVisible
                           ? Icons.visibility
                           : Icons.visibility_off),
                           color: Color(0xFF463263),
                       onPressed: () {
                         setState(
                               () {
                             passwordVisible = !passwordVisible;
                           },
                         );
                       },
                     ),
                     alignLabelWithHint: false,

                   ),
                   keyboardType: TextInputType.visiblePassword,
                   textInputAction: TextInputAction.done,


                     ),
                   ),
                 ),
               ),
           // Email
           //Password
           //Sign in with google
           SizedBox(height: 40,),
           Container(
             child: Padding(
               padding: const EdgeInsets.all(17.0),
               child: SlideAction(
                 elevation: 0,
               outerColor: Color(0xFFF4DAF3),
               innerColor: Color(0xFFBC4296),
               height: 32,
               text: 'Swpie to Continue',textStyle: TextStyle( decoration: TextDecoration.none,color: Color(0xFF463263)),
               onSubmit: (){
                 // do something here
                 Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> HomePage()));
               },
               ),
             ),
           ),
           Container(
             child: Column(
               children: [
                 Image.asset('images/divider.png',height: 120,width: 340,),
               ],
             ),
           ),
           Container(
             child: ElevatedButton.icon(
               icon: Image.asset( //        <-- Image
                 'images/google.png',height: 30,fit: BoxFit.cover,),
               onPressed: () {  },
               label: Text('Signin using Google'),
               style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10.0),
                 fixedSize: Size(310,50),
                 textStyle: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),
                 primary: Color(0xFF8867CF),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20),
                   )
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

/*
mainAxisAlignment: MainAxisAlignment.center,
children: const [
Expanded(
child: Divider(
indent: 20.0,
endIndent: 10.0,
thickness: 1,
),
),
Text(
"OR",
style: TextStyle(color: Colors.blueGrey),
),
Expanded(
child: Divider(
indent: 10.0,
endIndent: 20.0,
thickness: 1,
),
),
],*/
