import 'dart:convert';

class FoodModel {
  final String name;
  final String imagePath;
  final double score;
  final int ratings;
  final String region;
  final String category;
  final int calorie;
  final String description;
  final int price;
  FoodModel({
    required this.name,
    required this.imagePath,
    required this.score,
    required this.ratings,
    required this.region,
    required this.category,
    required this.calorie,
    required this.description,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'imagePath': imagePath});
    result.addAll({'score': score});
    result.addAll({'ratings': ratings});
    result.addAll({'region': region});
    result.addAll({'category': category});
    result.addAll({'calorie': calorie});
    result.addAll({'description': description});
    result.addAll({'price': price});

    return result;
  }

  factory FoodModel.fromMap(Map<String, dynamic> map) {
    return FoodModel(
      name: map['name'] ?? '',
      imagePath: map['imagePath'] ?? '',
      score: map['score']?.toDouble() ?? 0.0,
      ratings: map['ratings']?.toInt() ?? 0,
      region: map['region'] ?? '',
      category: map['category'] ?? '',
      calorie: map['calorie']?.toInt() ?? 0,
      description: map['description'] ?? '',
      price: map['price']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory FoodModel.fromJson(String source) => FoodModel.fromMap(json.decode(source));
}

class FoodLists {
  static List<FoodModel> foods = [
    FoodModel(
        name: "Minute by tuk tuk",
        imagePath: "https://images.lifestyleasia.com/wp-content/uploads/sites/6/2022/03/03140502/hero3-1587x900.jpg",
        score: 4.8,
        ratings: 124,
        region: "Western Food",
        category: "Food",
        calorie: 780,
        description:
            "this is 780 calori, this is 780 calori, this is 780 calori, this is 780 calori, this is 780 calori, this is 780 calori, ",
        price: 8),
    FoodModel(
        name: "Cafe de Noir",
        imagePath: "https://i.pinimg.com/736x/4a/86/5b/4a865bdc0ea78e98fc62519538d03a42.jpg",
        score: 3.1,
        ratings: 784,
        region: "Offers",
        category: "Beverage",
        calorie: 120,
        description: "120 is calori dude,120 is calori dude,120 is calori dude,120 alori dude,. ",
        price: 34),
    FoodModel(
        name: "Minute by tuk tuk",
        imagePath:
            "https://i.pinimg.com/736x/4c/be/36/4cbe36a976321a89b75bc41db8f6a1ad--paleo-shortcake-low-carb-strawberry-shortcake.jpg",
        score: 5,
        ratings: 124,
        region: "Sri lankan",
        category: "Dessert",
        calorie: 354,
        description:
            "this is 1250 this is 1250 this is 1250 this is 1250 this is 1250 this is 1250 this is 1250 this is 1250 this is 1250 this is 1250 this is 1250 this is 1250  ",
        price: 17),
    FoodModel(
        name: "Minute by tuk tuk",
        imagePath: "https://i.pinimg.com/550x/75/d6/aa/75d6aaaaa922748c60e9ce0572510a78.jpg",
        score: 1.8,
        ratings: 124,
        region: "Turkey",
        category: "Promotion",
        calorie: 1211,
        description:
            "240 calori this food 240 calori this food 240 calori this food 240 calori this food 240 calori this food 240 calori this food 240 calori this food ",
        price: 19),
    FoodModel(
        name: "Minute by tuk tuk",
        imagePath: "https://i.pinimg.com/736x/13/ad/2b/13ad2b67b3ce69e56289e3492f874540--fanta-twists.jpg",
        score: 2.7,
        ratings: 124,
        region: "Itlian",
        category: "Promotion",
        calorie: 80,
        description:
            "110 calori tihs food and very taste , : 110 calori tihs food and very taste , : 110 calori tihs food and very taste , : 110 calori tihs food and very taste , : ",
        price: 25),
    FoodModel(
        name: "Minute by tuk tuk",
        imagePath:
            "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/dessert-main-image-molten-cake-0fbd4f2.jpg",
        score: 5,
        ratings: 124,
        region: "India",
        category: "Dessert",
        calorie: 456,
        description:
            "this is a description about food, this is a description about food, this is a description about food, this is a description abouthis is a description about food, t food, this is a description about food, this is a description about food, ",
        price: 9),
    FoodModel(
        name: "Minute by tuk tuk",
        imagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToye3T9Nf_a2i-2zwhFx1KQ13O8XseeJa8U3nmtC10MGAyCpT8q8uQoA_-peX7DQv4SCE&usqp=CAU",
        score: 3,
        ratings: 124,
        region: "Turkey",
        category: "Food",
        calorie: 478,
        description:
            "I dont know what should have I wrote here, soooo I just typingg keyboard, I dont know what should have I wrote here, soooo I just typingg keyboard,  ",
        price: 54),
  ];
}
