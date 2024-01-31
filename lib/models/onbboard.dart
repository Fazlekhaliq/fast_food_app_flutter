import 'package:super_foodoo/utils/images.dart';

class Onboarding{
  String path;
  String name;
  String des;
  Onboarding({
    required this.path,
    required this.name,
    required this.des,
});

}
final responseOnboarding= <Onboarding>[
  Onboarding(
      path: onboardingImage,
      name: "Trending Foods",
      des: "Lorem ipsum dolor sit amet consectetur. Ut cras pellentesque diam mauris laoreet donec a eget aliquam. "
  ),
  Onboarding(
      path: "assets/Take Away-pana 1.png",
      name: "Fast Delivery",
      des: "Lorem ipsum dolor sit amet consectetur. Ut cras pellentesque diam mauris laoreet donec a eget aliquam. "
  ),
  Onboarding(
      path: "assets/Pasta-pana 1.png",
      name: "Find Nearby Restaurants",
      des: "Lorem ipsum dolor sit amet consectetur. Ut cras pellentesque diam mauris laoreet donec a eget aliquam. "
  ),
  Onboarding(
      path: "assets/Asset aa 1.png",
      name: "Easy Ordering",
      des: "Lorem ipsum dolor sit amet consectetur. Ut cras pellentesque diam mauris laoreet donec a eget aliquam. "
  )
];