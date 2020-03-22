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
                  TextSection("Titulo 1","descrição do titulo 1 bla bla bla"),
                  TextSection("TItulo 2","descrição do titulo 2 bla bla bla"),
                  TextSection("Titulo 3","descrição do titulo 2 bla bla bla")
    
            ])
    );
  }
}

