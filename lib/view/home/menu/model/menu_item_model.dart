import 'package:flutter/cupertino.dart';

class MenuItemModel {
  MenuItemModel({required this.onTap, required this.title, required this.numberItem, required this.imagePath});

  final String title;

  final int numberItem;

  final String imagePath;

  final VoidCallback onTap;
}

class MenuItems {
  static List<MenuItemModel> items = [
    MenuItemModel(
      title: "Food",
      numberItem: 120,
      imagePath: "https://cdn.pixabay.com/photo/2015/04/08/13/13/food-712665_960_720.jpg",
      onTap: () {},
    ),
    MenuItemModel(
        title: "Beverages",
        numberItem: 220,
        imagePath:
            "https://images.unsplash.com/photo-1522992319-0365e5f11656?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
        onTap: () {}),
    MenuItemModel(
        title: "Desserts",
        numberItem: 155,
        imagePath:
            "https://media.istockphoto.com/photos/blueberry-cheesecake-on-wooden-plate-picture-id591829430?s=612x612",
        onTap: () {}),
    MenuItemModel(
        title: "Promotions",
        numberItem: 25,
        imagePath: "https://cdn.pixabay.com/photo/2010/12/13/10/05/berries-2277_960_720.jpg",
        onTap: () {}),
  ];
}
