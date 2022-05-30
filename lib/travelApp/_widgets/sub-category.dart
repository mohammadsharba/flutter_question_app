import 'package:flutter/material.dart';
import 'package:flutter_app/travelApp/_screens/item_detail_screen.dart';

class SubCategory extends StatelessWidget {
  final String id;
  final String title;
  final List<String> categories;
  final String details;
  final int quantity;
  final double price;
  final String applayanceType;
  final String imageURL;

  const SubCategory(
      {this.id,
      this.title,
      this.categories,
      this.details,
      this.quantity,
      this.price,
      this.applayanceType,
      this.imageURL});

  selectItem(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(ItemDetailScreen.itemDetailScreen, arguments: {
      'id': id,
      'title': title,
      'detail': details,
      'price': price,
      'quantity': quantity
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectItem(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 7,
        margin: EdgeInsets.all(10),
        child: Column(children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image.network(
                  imageURL,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 250,
                alignment: Alignment.bottomRight,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(1)
                    ],
                        stops: [
                      0.6,
                      1
                    ])),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 5),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.amber[700],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("جميل")
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.money,
                      color: Colors.amber[700],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("$price الف دينار")
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.production_quantity_limits_rounded,
                      color: Colors.amber[700],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("$quantity قطعة")
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
