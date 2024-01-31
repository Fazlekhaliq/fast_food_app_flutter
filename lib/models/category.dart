class Category {
  final String path;
  final String name;

  Category({
    required this.path,
    required this.name,
  });
}

final responseCategories = <Category>[
  Category(path: "assets/burger 1.png", name: "Burger"),
  Category(path: "assets/pizza 1.png", name: "Pizza"),
  Category(path: "assets/meat_ 1.png", name: "Meat"),
  Category(path: "assets/ice cream 1.png", name: "Ice cream"),
];
