import 'package:flutter/material.dart';
import 'screens/location_detail/location_detail.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext buildContext){
     return MaterialApp( 
         home: LocationDetail(),
     );
  }
}