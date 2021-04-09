import 'dart:convert';

import 'package:flutter_catalog/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogModel {
  static List<Item> items;

  // Get Item by ID
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  // Get Item by position
  Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  int quantity;
  final String color;
  final String image;

  num get totalPrice => price * quantity;

  Item({
    this.id,
    this.name,
    this.desc,
    this.price,
    this.color,
    this.image,
    this.quantity = 1,
  });

  Item copyWith({
    int id,
    String name,
    String desc,
    num price,
    String color,
    int quantity = 1,
    String image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
      quantity: quantity ?? this.quantity ?? 1,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
      'quantity': quantity,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Item(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      price: map['price'],
      color: map['color'],
      image: map['image'],
      quantity: map['quantity'] ?? 1,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Item &&
        o.id == id &&
        o.name == name &&
        o.desc == desc &&
        o.price == price &&
        o.color == color &&
        o.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}

class SearchMutation extends VxMutation<MyStore> {
  final String query;

  SearchMutation(this.query);
  @override
  perform() {
    if (query.length >= 1) {
      store.items = CatalogModel.items
          .where((el) => el.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    } else {
      store.items = CatalogModel.items;
    }
  }
}

class ChangeQuantity extends VxMutation<MyStore> {
  final Item catalog;
  final int quantity;

  ChangeQuantity(this.catalog, this.quantity);
  @override
  perform() {
    catalog.quantity = quantity;
  }
}
