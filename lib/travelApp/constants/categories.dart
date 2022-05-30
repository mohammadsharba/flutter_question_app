import 'package:flutter_app/travelApp/_models/item-detail.dart';
import 'package:flutter_app/travelApp/_models/shop_category.dart';

// This file conain list of categories models based on the original object file
// for(i=0; i<=data.length; i++){
//   list.add(ShopCategory(id: data[i].id, title: data[i].title, imageUrl: data[i].imageUrl))
// }
const categories = const [
  ShopCategory(
      id: 'n1',
      title: 'حبوب القهوة',
      imageUrl:
          'https://images.pexels.com/photos/1459339/pexels-photo-1459339.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'),
  ShopCategory(
    id: 'n2',
    title: 'كمكس',
    imageUrl:
        'https://images.pexels.com/photos/7790320/pexels-photo-7790320.jpeg?auto=compress&cs=tinysrgb&w=600',
  ),
  ShopCategory(
      id: 'n3',
      title: 'بورت فلتر',
      imageUrl:
          'https://images.pexels.com/photos/4349788/pexels-photo-4349788.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
  ShopCategory(
      id: 'n4',
      title: 'اجهزة تحضير',
      imageUrl:
          'https://images.pexels.com/photos/6589154/pexels-photo-6589154.jpeg?auto=compress&cs=tinysrgb&w=600'),
  ShopCategory(
      id: 'n5',
      title: 'بجر',
      imageUrl:
          'https://images.pexels.com/photos/4792685/pexels-photo-4792685.jpeg?auto=compress&cs=tinysrgb&w=600'),
  ShopCategory(
      id: 'n6',
      title: 'اكواب',
      imageUrl:
          'https://images.pexels.com/photos/894608/pexels-photo-894608.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
];

const itemData = const [
  const ItemDetail(
      id: "c1",
      title: "اثيوبيا",
      categories: ['n1'],
      details:
          "حبوب اثيوبيه على ارتفاع 1800 متر فوق مستوى سطح البحر. طريقة التحضير 'غسل' . سنة الأنتاج 2022.",
      quantity: 10,
      price: 15.0,
      appType: ApplayanceType.seeds,
      imageURL:
          "https://images.pexels.com/photos/532753/pexels-photo-532753.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
  const ItemDetail(
      id: "c2",
      title: "اندنوسيا",
      categories: ['n1'],
      details:
          "حبوب اثيوبيه على ارتفاع 1800 متر فوق مستوى سطح البحر. طريقة التحضير 'غسل' . سنة الأنتاج 2022.",
      quantity: 10,
      price: 15.0,
      appType: ApplayanceType.seeds,
      imageURL:
          "https://images.pexels.com/photos/164622/pexels-photo-164622.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
  const ItemDetail(
      id: "c3",
      title: "برازيلية",
      categories: ['n1'],
      details:
          "حبوب اثيوبيه على ارتفاع 1800 متر فوق مستوى سطح البحر. طريقة التحضير 'غسل' . سنة الأنتاج 2022.",
      quantity: 10,
      price: 15.0,
      appType: ApplayanceType.seeds,
      imageURL:
          "https://images.pexels.com/photos/942736/pexels-photo-942736.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
  const ItemDetail(
      id: "c4",
      title: "الأكوادور",
      categories: ['n1'],
      details:
          "حبوب اثيوبيه على ارتفاع 1800 متر فوق مستوى سطح البحر. طريقة التحضير 'غسل' . سنة الأنتاج 2022.",
      quantity: 10,
      price: 15.0,
      appType: ApplayanceType.seeds,
      imageURL:
          "https://images.pexels.com/photos/942736/pexels-photo-942736.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
  const ItemDetail(
      id: "c5",
      title: "كمكس 600ملم",
      categories: ['n2'],
      details: "اداة تحضير القهوه الشهيره الكمكس",
      quantity: 3,
      price: 10.0,
      appType: ApplayanceType.Mechanical,
      imageURL:
          "https://images.pexels.com/photos/5480759/pexels-photo-5480759.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
];
