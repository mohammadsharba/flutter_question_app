import 'package:flutter/material.dart';

class CategoryDetail extends StatelessWidget {
  const CategoryDetail({key}) : super(key: key);
  static const categoryDetailScreen = '/category-detail-screen';
  @override
  Widget build(BuildContext context) {
    final argument =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final title = argument['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(color: Colors.blue),
    );
  }
}
