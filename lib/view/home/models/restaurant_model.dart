import 'package:shopping/view/home/models/food_model.dart';

class RestaurantModel {
  final String name;
  final String imagePath;
  final double score;
  final int ratings;
  final String region;
  final List<FoodModel> foods;
  RestaurantModel({
    required this.name,
    required this.imagePath,
    required this.score,
    required this.ratings,
    required this.region,
    required this.foods,
  });
}

class RestaurantLists {
  static List<RestaurantModel> restaurants = [
    RestaurantModel(
        name: "la billa resturant",
        imagePath:
            "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
        score: 4,
        ratings: 120,
        region: "Western Food",
        foods: [
          FoodModel(
              name: "Minute by tuk tuk",
              imagePath:
                  "https://images.lifestyleasia.com/wp-content/uploads/sites/6/2022/03/03140502/hero3-1587x900.jpg",
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
        ]),
    RestaurantModel(
        name: "fransizzzz mutafigi ",
        imagePath:
            "https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=780&q=80",
        score: 4.7,
        ratings: 130,
        region: "Offers",
        foods: [
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
        ]),
    RestaurantModel(
        name: "ali agalar tavuk döner",
        imagePath:
            "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
        score: 2,
        ratings: 7,
        region: "Sri lankan",
        foods: [
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
        ]),
    RestaurantModel(
        name: "bak orada kus var restuarnt",
        imagePath:
            "https://images.unsplash.com/photo-1505253716362-afaea1d3d1af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
        score: 1,
        ratings: 75,
        region: "Turkey",
        foods: [
          FoodModel(
              name: "Minute by tuk tuk",
              imagePath:
                  "https://images.lifestyleasia.com/wp-content/uploads/sites/6/2022/03/03140502/hero3-1587x900.jpg",
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
        ]),
    RestaurantModel(
        name: "so big  resturant",
        imagePath:
            "https://images.unsplash.com/photo-1455853828816-0c301a011711?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
        score: 3,
        ratings: 1374,
        region: "Turkey",
        foods: [
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
        ]),
    RestaurantModel(
        name: "so small billa resturant",
        imagePath:
            "https://images.unsplash.com/photo-1459162141474-3bd9d0fb079d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
        score: 3.7,
        ratings: 10,
        region: "India",
        foods: [
          FoodModel(
              name: "Minute by tuk tuk",
              imagePath:
                  "https://images.lifestyleasia.com/wp-content/uploads/sites/6/2022/03/03140502/hero3-1587x900.jpg",
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
        ]),
    RestaurantModel(
        name: "normal resturant",
        imagePath:
            "https://images.unsplash.com/photo-1455099675745-a442989ac8bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1093&q=80",
        score: 4.2,
        ratings: 2,
        region: "Itlian",
        foods: [
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
        ]),
    RestaurantModel(
        name: "what the fuck resturant",
        imagePath:
            "https://images.unsplash.com/photo-1547714695-bed5d1fef848?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
        score: 4.8,
        ratings: 25,
        region: "Turkey",
        foods: [
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
        ]),
  ];
}
