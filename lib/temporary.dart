//how maps and jsons are connected and models as well
void main(List<String> args) {
  //Maps
  var myMap = {
    'name': 'Ume',
    'age': 7,
    'city': 'Mataró',
    //List of Maps
    'friends': [
      {
        'name': 'Stella',
        'age': 2,
      },
      {
        'name': 'Anton',
        'age': 5,
      }
    ]
  };

  var obj = Person.fromJson(myMap);
  var myFriends = obj.friends;
  myFriends!.map((e) => {print(e.age)}).toList();
}

//Building Model
class Person {
  String? name;
  int? age;
  String? city;
  List<Friend>? friends;

  Person({this.age, this.name, this.city, this.friends});
  Person.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    city = json['city'];
    if (json['friends'] != null) {
      friends = <Friend>[];
      (json['friends'] as List).forEach((element) {
        friends!.add(Friend.fromJson(element));
      });
    }
  }
}

//Building Model
class Friend {
  String? name;
  int? age;

  Friend({
    this.age,
    this.name,
  });

  Friend.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
  }
}
