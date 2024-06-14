class OnboardingContent {
  String image;
  String title;
  String description;

  OnboardingContent({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnboardingContent> contents = [
  OnboardingContent(
    image: "assets/images/screen1.png",
    title: "Select from Our\n    Best Menu",
    description:
        "       Price your food from Our Menu\nMore than 35 types of foods available",
  ),
  OnboardingContent(
    image: "assets/images/screen2.png",
    title: "Easy and Online payment",
    description:
        "You can pay cash on delivery and\n  Card payment is also available.\n",
  ),
  OnboardingContent(
    image: "assets/images/screen3.png",
    title: "Quick delivery at\n   your doorstep",
    description: "Deliver your food in your\n              DoorStep",
  ),
];
