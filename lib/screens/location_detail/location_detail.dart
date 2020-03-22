import 'package:flutter/material.dart';
import 'package:tutorial_01/screens/location_detail/text_section.dart';
import 'image_banner.dart';

class LocationDetail extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
         appBar: AppBar(
            title: Text('Teste Scaffold')
         ),
         
         
         body: 
            Column( 
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children : [
                  
                  ImageBanner('assets/images/img.jpg'),
                  TextSection(Colors.red  , Text('Ola 1')),
                  TextSection(Colors.green, Text('Ola 2')),
                  TextSection(Colors.blue , Text('Ola 3'))
    
            ])
    );
  }
}

