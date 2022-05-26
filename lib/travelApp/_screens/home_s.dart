import 'package:flutter/material.dart';
import 'package:flutter_app/travelApp/_widgets/category_item.dart';
import '../constants/categories.dart';

class HomeS extends StatelessWidget {
  const HomeS({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "متجر نوماكوفي",
          style: TextStyle(fontFamily: 'Almarai'),
        ),
      ),
      body: GridView(
        padding: EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: categories
            .map((item) => Category(
                  key: key,
                  title: item.title,
                  imageUrl: item.imageUrl,
                ))
            .toList(),
      ),
    );
  }
}
