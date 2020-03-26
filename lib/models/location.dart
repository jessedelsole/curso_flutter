import 'location_fact.dart';

class Location{
  int id;
  String name;
  String imagePath;
  final List<LocationFact>facts;

  Location(this.id, this.name, this.imagePath, this.facts);


  static Location fetchById(int id){

    List<Location> locations =  fetchAll();

    for (var i = 0; i<= locations.length; i++){
       if (locations[i].id == id){
         return locations[i];
       }
    }

  }


  static List<Location> fetchAll() {


    return [

        Location(1,'Monte fuji','assets/images/img2.jpg',
             [ LocationFact('Summary','While we could go the etheral glow and seemingly ends heights of this bamboo grove') ,
               LocationFact('How to get there', 'Kyoto airport, with several terminals,is located 16 kilometers south of the city')]
        ),

       Location(2,'Arashyiyama Bamboo Grove','assets/images/img.jpg',
          [ LocationFact('Summary','While we could go the etheral glow and seemingly ends heights of this bamboo grove') ,
            LocationFact('How to get there', 'Kyoto airport, with several terminals,is located 16 kilometers south of the city')]
       ),

      Location(3,'Temple bla bla bla','assets/images/img.jpg',
          [ LocationFact('Summary','While we could go the etheral glow and seemingly ends heights of this bamboo grove') ,
            LocationFact('How to get there', 'Kyoto airport, with several terminals,is located 16 kilometers south of the city')]
      ),

    ];

}

}