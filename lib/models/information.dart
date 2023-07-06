import 'dart:convert';

class Information {
  Information(
      {this.image,
      required this.title,
      required this.description,
      required this.name,
      required this.dateTime,
      required this.phoneNumber,
      required this.adress});

  final List<String>? image;
  final String title;
  final String description;
  final String name;
  final String dateTime;
  final String phoneNumber;
  final String adress;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (image != null) {
      result.addAll({'image': image});
    }
    result.addAll({'title': title});
    result.addAll({'description': description});
    result.addAll({'name': name});
    result.addAll({'dateTime': dateTime});
    result.addAll({'phoneNumber': phoneNumber});
    result.addAll({'adress': adress});

    return result;
  }

  factory Information.fromMap(Map<String, dynamic> map) {
    return Information(
      image: List<String>.from(map['image']),
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      name: map['name'] ?? '',
      dateTime: map['dateTime'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
      adress: map['adress'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Information.fromJson(String source) =>
      Information.fromMap(json.decode(source));
}
