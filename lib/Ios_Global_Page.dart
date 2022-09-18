class IToday {
  String name;
  String subName;
  String image;
  String description;

  IToday({
    required this.name,
    required this.subName,
    required this.image,
    required this.description,
  });
}

List<IToday> todayList = <IToday>[
IToday(
name: "Teenpattitarget",
subName: "Play 3 Patti Online",
image: "assets/Images/teenpatti.png",
description: "⭐⭐⭐⭐⭐"),
IToday(
name: "Asphalt 9: Legends",
subName: "Car Simulator: Drive & Drift",
image: "assets/Images/Asphalt9.png",
description: "⭐⭐⭐⭐⭐"),
IToday(
name: "Bike Rider",
subName: "Racing",
image: "assets/Images/BikeRider.png",
description: "⭐⭐⭐⭐⭐"),
IToday(
name: "Car Simulator",
subName: "Drive",
image: "assets/Images/Carsimulator.png",
description: "⭐⭐⭐⭐⭐"),
IToday(
name: "Ludo",
subName: "Bizarre Sports Games",
image: "assets/Images/Ludo.png",
description: "⭐⭐⭐⭐⭐"),
IToday(
name: "Truck Simulator",
subName: "Drive",
image: "assets/Images/Trucksimulator.png",
description: "⭐⭐⭐⭐⭐"),
];