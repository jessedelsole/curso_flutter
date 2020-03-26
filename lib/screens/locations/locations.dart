import 'package:flutter/material.dart';
import 'package:tutorial_01/app.dart';
import 'package:tutorial_01/models/location.dart';

class Locations extends StatelessWidget{

  @override
  Widget build(BuildContext context){

       final locations = Location.fetchAll();

       return Scaffold(
          appBar: AppBar(
            title: Text('Location')
          ),
          body: ListView(
             children: locations.map( (l) => 
               GestureDetector(child:  Text(l.name ) ,
               onTap: ()=> _onLocationTap(context, l.id)
               )
             
              ) .toList()

          )

       );


  }


  _onLocationTap(BuildContext context, int id){
      Navigator.pushNamed(context, LocationDetailRoute, arguments: { "id": id});
  }

}