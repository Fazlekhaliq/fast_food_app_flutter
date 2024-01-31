class Food {

  String path;
  String name;
  String serve;
  String assessment;
  String information;


  Food({

    required this.path,
    required this.name,
    required this.serve,
    required this.assessment,
    required this.information,

  });
}

final responseFoods = <Food>[
  Food(
    path: "assets/view-3d-burger-meal-with-french-fries 1.png",
    name: "McDonald’s(Best Offer)",
    serve: "Free Item(Spend \$10)",
    assessment: "4.5",
    information: "\$4.99 Delivery Fee . 15-30 min",
  ),
  Food(
    path: "assets/delicious-pizza-indoors 1.png",
    name: "Supreme Pizza",
    serve: "Buy 1 Get 1 Free",
    assessment: "5.5",
    information: "\$2.99 Delivery Fee . 15-30 min",
  ),
  Food(
    path: "assets/delicious-cupcakes-with-colorful-icing 1.png",
    name: "Supreme Pizza",
    serve: "Buy 1 Get 1 Free",
    assessment: "5.5",
    information: "\$2.99 Delivery Fee . 15-30 min",
  ),
  Food(
    path: "assets/top-view-delicious-pasta-arrangement 1.png",
    name: "Supreme Pizza",
    serve: "Buy 1 Get 1 Free",
    assessment: "5.5",
    information: "\$2.99 Delivery Fee . 15-30 min",
  ),



];
