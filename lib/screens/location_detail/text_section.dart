import 'package:flutter/material.dart';

class TextSection extends StatelessWidget{
   

   final String _title;
   final String _body;

  TextSection(this._title, this._body);


  @override
  Widget build(BuildContext context){

    return Column(

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
             padding: EdgeInsets.fromLTRB(16, 32  , 16, 4),
             child: Text(_title,
                         style: Theme.of(context).textTheme.title)
            ),

         Container(
             padding : EdgeInsets.fromLTRB(16, 10, 16, 16),
             child:  Text(_body, style:Theme.of(context).textTheme.body1)
         )


        ]

    );

  }
}