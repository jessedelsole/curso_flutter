import 'package:flutter/material.dart';
import 'package:tutorial_01/screens/location_detail/location_detail.dart';
import 'package:tutorial_01/screens/locations/locations.dart';
import 'package:tutorial_01/style.dart';

const LocationsRoute='/';
const LocationDetailRoute='/location_detail';


class App extends StatelessWidget{
  
  @override
  Widget build(BuildContext buildContext){
     return MaterialApp( 
         //home: Locations(),
         onGenerateRoute: _routes(),
         theme: _theme()
    );
  }


ThemeData _theme(){

   return ThemeData(
           appBarTheme: AppBarTheme(
               textTheme: TextTheme(title: AppBarTextStyle)

           ),

           textTheme: TextTheme(
              title: TitleTextStyle,
              body1: Body1TextStyle,
           )
         );
   
    
}

 RouteFactory _routes(){
    return (settings){
       
       final Map<String, dynamic>arguments = settings.arguments;
       Widget screen;
       switch(settings.name){
         case LocationsRoute:
           screen=Locations();
           break;
         case LocationDetailRoute:
           screen = LocationDetail( arguments['id']);
           break;
         default:
           return null;
       }

       return MaterialPageRoute(
          builder :  (BuildContext context)=> screen ); 
    };
 }



}