import 'dart:convert';

class StoreModel {
  String title;

  StoreModel({
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
    };
  }

  factory StoreModel.fromMap(Map<String, dynamic> map) {
    return StoreModel(
      title: map['title'],
    );
  }

  String toJson() => json.encode(toMap());

  factory StoreModel.fromJson(String source) => StoreModel.fromMap(json.decode(source));
}
