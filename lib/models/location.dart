import 'location_fact.dart';

class Location{
  String name;
  String imagePath;
  final List<LocationFact>facts;

  Location(this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {


    return [

        Location('Arashyiyama Bamboo Grove','assets/images/img.jpg',
             [ LocationFact('Summary','While we could go the etheral glow and seemingly ends heights of this bamboo grove') ,
               LocationFact('How to get there', 'Kyoto airport, with several terminals,is located 16 kilometers south of the city')]
        )

    ];

}

}