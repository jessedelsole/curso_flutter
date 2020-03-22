import 'package:flutter/material.dart';
import 'package:tutorial_01/style.dart';
import 'screens/location_detail/location_detail.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext buildContext){
     return MaterialApp( 
         home: LocationDetail(),

         theme: ThemeData(

           appBarTheme: AppBarTheme(
               textTheme: TextTheme(title: AppBarTextStyle)

           ),

           textTheme: TextTheme(
              title: TitleTextStyle,
              body1: Body1TextStyle,
           )
         )
     );
  }
}