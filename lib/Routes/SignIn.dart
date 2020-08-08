import 'file:///F:/mah/M1/AIR/airbnb_clone/lib/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main()=>runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home : SignInPage(),
  )
);

class SignInPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

           child :Container(
             //height: double.infinity,
             child: Column(
                 children: <Widget>[
                 Row(

                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: <Widget>[
                     Text("Bienvenue",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),
                       textAlign: TextAlign.center,
                     ),
                     Container(
                       width: 150,
                       height: 80,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                           image: AssetImage('assets/images/logo.png'),
                           fit: BoxFit.scaleDown,
                         ),
                       ),
                     ),
                   ],
                 ),
                 Container(
                     margin: EdgeInsets.only(top: 50),
                   //  height: double.infinity,
                     width: double.infinity,
                     decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                     ),
                     child:Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: <Widget>[
                           Container(
                             margin: EdgeInsets.only(top: 50,left: 20,right: 20),
                             padding: EdgeInsets.only(left:20,right: 15),
                             decoration: BoxDecoration(
                                 color:Colors.white,
                                 borderRadius: BorderRadius.circular(30,),
                                 boxShadow:  [BoxShadow(
                                   color: Color.fromRGBO(225, 95 , 27, .3),
                                   blurRadius: 20,
                                   offset: Offset(0,10),
                                 )]
                             ),
                             child: TextField(
                               decoration: InputDecoration(
                                   hintText: "Nom et prénom",
                                   hintStyle: TextStyle(color: Colors.grey),
                                   border: InputBorder.none,
                                   suffixIcon: Icon(Icons.person_outline)
                               ),
                             ),
                           ),
                        /*   Container(
                             margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                             padding: EdgeInsets.only(left:20,right: 15),
                             decoration: BoxDecoration(
                                 color:Colors.white,
                                 borderRadius: BorderRadius.circular(30,),
                                 boxShadow:  [BoxShadow(
                                   color: Color.fromRGBO(225, 95 , 27, .3),
                                   blurRadius: 20,
                                   offset: Offset(0,10),
                                 )]
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: <Widget>[
                                 Container(
                                   decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                     color: Colors.white,
                                   ),
                                 ),
                                 Container(
                                   decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                     color: Colors.white,
                                   ),
                                 )
                               ],
                             ),
                           ),*/
                        /*  Container(
                             margin: EdgeInsets.only(top: 50,left: 20,right: 20),
                             padding: EdgeInsets.only(left:20,right: 15),
                             decoration: BoxDecoration(
                                 color:Colors.white,
                                 borderRadius: BorderRadius.circular(30,),
                                 boxShadow:  [BoxShadow(
                                   color: Color.fromRGBO(225, 95 , 27, .3),
                                   blurRadius: 20,
                                   offset: Offset(0,10),
                                 )]
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: <Widget>[
                                 Row(
                                   children: <Widget>[
                                     Text("Masculin",style: TextStyle(color: Colors.grey,),),
                                     Icon(FontAwesomeIcons.male),
                                   ],
                                 ),
                                 Row(
                                   children: <Widget>[
                                     Text("Féminin",style: TextStyle(color: Colors.grey,),),
                                     Icon(FontAwesomeIcons.female),
                                   ],
                                 ),
                               ],
                             ),
                           ),*/
                           Container(
                             margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                             padding: EdgeInsets.only(left:20,right: 15),
                             decoration: BoxDecoration(
                                 color:Colors.white,
                                 borderRadius: BorderRadius.circular(30,),
                                 boxShadow:  [BoxShadow(
                                   color: Color.fromRGBO(225, 95 , 27, .3),
                                   blurRadius: 20,
                                   offset: Offset(0,10),
                                 )]
                             ),
                             child: TextField(
                               decoration: InputDecoration(
                                   hintText: "Email",
                                   hintStyle: TextStyle(color: Colors.grey),
                                   border: InputBorder.none,
                                   suffixIcon: Icon(Icons.alternate_email)
                               ),
                             ),
                           ),
                           Container(
                             margin: EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 30),
                             padding: EdgeInsets.only(left:20,right: 15),
                             decoration: BoxDecoration(
                                 color:Colors.white,
                                 borderRadius: BorderRadius.circular(30,),
                                 boxShadow:  [BoxShadow(
                                   color: Color.fromRGBO(225, 95 , 27, .3),
                                   blurRadius: 20,
                                   offset: Offset(0,10),
                                 )]
                             ),
                             child: TextField(
                               obscureText: true,
                               decoration: InputDecoration(
                                   hintText: "Password",
                                   hintStyle: TextStyle(color: Colors.grey),
                                   border: InputBorder.none,
                                   suffixIcon: Icon(Icons.lock_outline)
                               ),
                             ),
                           ),
                           Container(
                             margin: EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 30),
                             // padding: EdgeInsets.only(left: 20,right: 20,top:10,bottom:10),
                             width: 150,
                             decoration: BoxDecoration(
                                 color:Color(0xff3366cc),
                                 borderRadius: BorderRadius.circular(30,),
                                 boxShadow:  [BoxShadow(
                                   color: Color.fromRGBO(225, 95 , 27, .3),
                                   blurRadius: 20,
                                   offset: Offset(0,10),
                                 )]
                             ),
                             child  :FlatButton(
                               onPressed:()=> print("hello"),
                               child:Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   children:<Widget>[
                                     Text("S'inscrire",style: TextStyle(color: Colors.white),
                                     ),
                                     Icon(Icons.keyboard_arrow_right)
                                   ]
                               ),
                             ),
                           ),
                           Text("Continuez avec ?",style: TextStyle(color: Colors.grey),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: <Widget>[
                               InkWell(
                                 onTap:() => print("hello"),
                                 child: Container(
                                   margin: EdgeInsets.all(20),
                                   //padding: EdgeInsets.all(20),
                                   height: 60,
                                   width: 60,
                                   alignment: Alignment.center,
                                   decoration: BoxDecoration(
                                     shape: BoxShape.circle, color: Color(0xfff35e0b),
                                   ),
                                   child: Image(
                                     height: 40,
                                     width: 40,
                                     image: AssetImage('assets/images/social_media/google.png'),
                                   ),
                                 ),
                               ),
                               InkWell(
                                 onTap:() => print("hello"),
                                 child: Container(
                                   margin: EdgeInsets.all(20),
                                   //padding: EdgeInsets.all(20),
                                   height: 60,
                                   width: 60,
                                   alignment: Alignment.center,
                                   decoration: BoxDecoration(
                                     shape: BoxShape.circle, color: Color(0xfff35e0b),
                                   ),
                                   child: Image(
                                     height: 40,
                                     width: 40,
                                     image: AssetImage('assets/images/social_media/phone.png'),
                                     ),
                                   ),
                                 ),
                               ]),
                           SizedBox(height: 7,)
                             ],
                           )
                 )]
                     )
                 ),
             ),
    );
  }
}

