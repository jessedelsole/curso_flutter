import 'package:flutter/material.dart';
import 'package:tutorial_01/models/location.dart';
import 'package:tutorial_01/screens/location_detail/text_section.dart';
import 'image_banner.dart';

class LocationDetail extends StatelessWidget{

  final _locationId;


  LocationDetail(this._locationId);

  @override
  Widget build(BuildContext context){

   // final locations = Location.fetchAll();
    final location = Location.fetchById(_locationId);  //locations.first;

    return Scaffold(
         appBar: AppBar(
            title: Text(location.name)
         ),
         
         
         body: 
            Column( 
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children : [
                  
                  ImageBanner(location.imagePath),
            ]..addAll(textSections(location))


            )
    );
  }


  List<Widget> textSections(Location location){

    return location.facts.map( (fact) => TextSection(fact.title, fact.text )).toList();

  }

}

