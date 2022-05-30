import 'package:flutter/material.dart';

class ItemDetailScreen extends StatelessWidget {
  static const itemDetailScreen = '/item-detail-screen';

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context).settings.arguments as Map<dynamic, dynamic>;
    final title = arguments['title'];
    return Scaffold(
      appBar: AppBar(title: Text("تفاصيل المنتج $title")),
      body: Text("detail info"),
    );
  }
}
