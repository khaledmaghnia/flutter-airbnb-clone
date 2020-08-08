import 'package:airbnb_clone/Constants/Constants.dart';
import 'package:airbnb_clone/Model/Property.dart';
import 'package:airbnb_clone/Routes/Property-details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_slider_indicator/flutter_slider_indicator.dart';

class Properties extends StatefulWidget {

  @override
  _PropertiesState createState() => _PropertiesState();
}

class _PropertiesState extends State<Properties> {
  var _pageController=PageController();
  var _currentIndex=0;

  var _liked=false;


  @override
  Widget build(BuildContext context) {
    _pageController.addListener(() {
      setState(() {
        _currentIndex=_pageController.page.round();
      });
    });

    List<Padding> paddings = [
     _buildPadding(Constants.properties[0]),
   //  _buildPadding(Constants.properties[2]),
     _buildPadding(Constants.properties[1]),
    ];
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            for(Padding pad in paddings)
              pad,

          ],
        ),
      ),
    );

  }
  Container buildImageSlider(BuildContext context,PageController p,int index,Property property) {
    return Container(
     // margin: EdgeInsets.all(20),
        child: PageView.builder(
           controller: p..addListener(() {
             setState(() {
              index=p.page.round();
             });
           }),
            itemCount: property.images.length,
            itemBuilder: (
                context,index){
              return ClipRRect(
                  borderRadius: BorderRadius.circular(3),
              child:Image.asset(property.images[index],fit: BoxFit.fill,));
            }
        )
    );
  }

  Align buildWidgetImageIndicator(BuildContext context,Property property, int currentindex) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: SliderIndicator(
          length: property.images.length,
          activeIndex: currentindex,
          indicator:Padding( padding:EdgeInsets.all(3),child:Icon(Icons.fiber_manual_record,color: Colors.white70,size: 10,)),
          activeIndicator: Padding(padding:EdgeInsets.all(3),child:Icon(Icons.fiber_manual_record,color: Colors.white,size: 14,),)
        ),
      ),
    );
  }

  buildHeartWidget(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(10),
      alignment: Alignment.topRight,
      child:GestureDetector(
      child:Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        //  borderRadius: BorderRadius.circular(25)
        ),
          child: Icon(!_liked?Icons.favorite_border:Icons.favorite,color:!_liked? Colors.black:Colors.red,size: 25,),
      ),
        onTap: (){
        setState(() {
          _liked=!_liked;
        });
        },
      )
    );
  }
  _buildPadding(Property property)
  {

    return    Padding(
      padding: EdgeInsets.only(bottom: 20),
      child:   InkWell(
        onTap: (){
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PropertyDetails(property)),
            );
            },
        child:Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(25,25,25,15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(color: Colors.black87),
              ),
              height: 200,
              child: Stack(
                children: <Widget>[
                  buildImageSlider(context,PageController(),_currentIndex,property),
                  buildWidgetImageIndicator(context,Constants.properties[1],_currentIndex),
                  buildHeartWidget(context),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25,0,25,7),
              child: Align(
                alignment: Alignment.topLeft,
                child:  Text("ORAN",style: TextStyle(color: Colors.black87,fontSize: 15,fontWeight: FontWeight.w400),),
              ) ,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25,vertical: 0),
              child: Align(
                alignment: Alignment.topLeft,
                child:  Text("Maison entière",style: TextStyle(color: Colors.black87,fontSize: 18,fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,),
              ) ,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25,vertical: 0),
              child: Align(
                alignment: Alignment.topLeft,
                child:  Text("EL-BEY",style: TextStyle(color: Colors.black87,fontSize: 18,fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,),
              ) ,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25,vertical: 2),
              child: Align(
                alignment: Alignment.topLeft,
                child:  Text("4200 DZD/nuit",style: TextStyle(color: Colors.black54,fontSize: 13,fontWeight: FontWeight.w400),),
              ) ,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25,2,25,10),
              child: Row(
                children: <Widget>[
                  Icon(Icons.star,color: Colors.blue,size: 12,),
                  Align(
                    alignment: Alignment.topLeft,
                    child:  Text("5,0",style: TextStyle(color: Colors.black87,fontSize: 13,fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,),
                  ) ,
                  Align(
                    alignment: Alignment.topLeft,
                    child:  Text("(25)",style: TextStyle(color: Colors.black54,fontSize: 13,fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,),
                  ) ,
                ],
              ),
            ),


          ],
        ), ),
    );
  }
}
