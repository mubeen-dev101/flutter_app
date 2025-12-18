// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatalogModel {
  static List<Item>? items = null;
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num Price;
  final String Color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.Price,
    required this.Color,
    required this.image,
  });

  Item copyWith({
    int? id,
    String? name,
    String? desc,
    num? Price,
    String? Color,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      Price: Price ?? this.Price,
      Color: Color ?? this.Color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'Price': Price,
      'Color': Color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      Price: map['Price'] as num,
      Color: map['Color'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, Price: $Price, Color: $Color, image: $image)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.Price == Price &&
        other.Color == Color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        Price.hashCode ^
        Color.hashCode ^
        image.hashCode;
  }
}
