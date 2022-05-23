class OnBoardingEntity {
  final String image;
  final String heading;
  final String description;

  OnBoardingEntity(
      {required this.image, required this.heading, required this.description});

  static List<OnBoardingEntity> onBoardingData = [
    OnBoardingEntity(
        image: 'assets/images/background.png',
        description: "Watch anywhere. Cancel at any time.",
        heading: "Unlimited films, Tv programmes & more"),
    OnBoardingEntity(
        image: 'assets/images/devices.png',
        description: "Always have something to watch offline.",
        heading: "Watch on any device"),
    OnBoardingEntity(
        image: 'assets/images/download.png',
        description: "join today, cancel at any time",
        heading: "No annoying contracts"),
    OnBoardingEntity(
        image: 'assets/images/contract.png',
        description: "Join today, cancel any time",
        heading: "No annoying contracts"),
  ];
}
