import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
   final gradient=LinearGradient(colors: [
    Color(0xff25498f)
 , Color(0xffa92846)
     , Color(0xffa92846)
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body:
        Container(alignment: Alignment.center,
padding:const EdgeInsets.all(32),
decoration: const BoxDecoration(
  image: DecorationImage(image: AssetImage("assets/images/barcelona-camp-nou-stadium-wallpaper-preview.jpg"),fit: BoxFit.cover
  )
),      
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:110 ),
          child: CircleAvatar(child: CircleAvatar(backgroundImage:AssetImage("assets/images/Barcelona-Badge-200mm-Wafer.png") ,radius: 137,),radius: 140,backgroundColor: Color(0xff25498f),),
        )
        ,Container(
          height: 58,
          child: ShaderMask(
            shaderCallback: (bounds){
              return gradient.createShader(Rect.fromLTWH(0, 0, bounds.width,bounds.height));
            },
            child: Text("Nour eldin wael",style: TextStyle(color: Colors.white,fontSize:40,fontFamily:"Pacifico",fontWeight: FontWeight.w100,shadows:[ BoxShadow(color: Colors.white,spreadRadius:5,offset: Offset(1,1) )]),)),)


       , Padding(
         padding: const EdgeInsets.only(),
         child: Container(

            child: ShaderMask(
              shaderCallback: (bounds){
                return gradient.createShader(Rect.fromLTWH(0, 0, bounds.width,bounds.height));
              },
              child: Text("Barcelona fan",style: TextStyle(color: Colors.white,fontSize:25,fontWeight: FontWeight.normal,shadows:[ BoxShadow(color: Colors.white,spreadRadius:5,offset: Offset(1,1) )]),)),),
       )

        ,Container(
decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12))
        ,margin: EdgeInsets.only(top:20 )
       ,height: 45
       ,width:330
          ,padding: EdgeInsets.only(left: 15)

      ,child: Row(
          children: [
Icon(Icons.call,)
,Padding(
  padding: const EdgeInsets.only(left: 12,bottom: 3),
  child:   Text("(+20)01201689341",style: TextStyle(fontSize: 19),),
)
        ],),)
        ,Container(
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12))
          ,margin: EdgeInsets.only(top:20 )
          ,height: 45
          ,width:330
          ,padding: EdgeInsets.only(left: 15)

          ,child: Row(
          children: [
            Icon(Icons.mail,)
            ,Padding(
              padding: const EdgeInsets.only(left: 12,bottom: 3),
              child:   Text("nwael1110@gmail.com",style: TextStyle(fontSize: 19),),
            )
          ],),)
      ],
    ),
    )
    )
    );
  }
}
