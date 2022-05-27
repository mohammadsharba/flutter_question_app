import 'package:flutter/material.dart';
import 'package:flutter_app/travelApp/_screens/category_detail.dart';

class Category extends StatelessWidget {
  final String title;
  final String imageUrl;

  const Category({Key key, this.title, this.imageUrl}) : super(key: key);
  goToCategoryDetails(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryDetail.categoryDetailScreen,
        arguments: {'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goToCategoryDetails(context),
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                // border: Border.all(color: Colors.amber, width: 3),
                borderRadius: BorderRadius.circular(15)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                imageUrl,
                // height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(title, style: Theme.of(context).textTheme.headline6
                  // TextStyle(
                  //     color: Colors.white,
                  //     fontFamily: "ElMessiri",
                  //     fontSize: 30,
                  //     fontWeight: FontWeight.w500),
                  )),
        ],
      ),
    );
  }
}
