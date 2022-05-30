import 'package:flutter/material.dart';
import 'package:flutter_app/travelApp/_widgets/sub-category.dart';

import '../constants/categories.dart';

class CategoryDetailScreen extends StatelessWidget {
  static const categoryDetailScreen = '/category-detail-screen';
  @override
  Widget build(BuildContext context) {
    final argument =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = argument['id'];
    final title = argument['title'];

    final itemByCategory = itemData.where((item) {
      return item.categories.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: itemByCategory.length,
        itemBuilder: (ctx, i) {
          return SubCategory(
            imageURL: itemByCategory[i].imageURL,
            title: itemByCategory[i].title,
            price: itemByCategory[i].price,
            quantity: itemByCategory[i].quantity,
          );
        },
      ),
    );
  }
}
