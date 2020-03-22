import 'package:flutter/material.dart';

class TextSection extends StatelessWidget{
   
   final Color _color;
   final Text _text;


  // TextSection(Color color){
  //  this._color = color;
  //}

  TextSection(this._color, this._text);


  @override
  Widget build(BuildContext context){

    return 
      Container( 
             decoration: BoxDecoration(
                color : this._color 
             ),
            child:_text);
  }
}