import 'package:flutter/material.dart';

enum ApplayanceType { Electrical, Mechanical, seeds }

class ItemDetail {
  final String id;
  final String title;
  final List<String> categories;
  final String details;
  final int quantity;
  final double price;
  final ApplayanceType appType;
  final String imageURL;

  const ItemDetail(
      {@required this.id,
      @required this.title,
      @required this.categories,
      @required this.details,
      @required this.quantity,
      @required this.price,
      @required this.appType,
      @required this.imageURL});
}
