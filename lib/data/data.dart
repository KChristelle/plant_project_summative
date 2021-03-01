import 'package:plant_growth_tracking_app/models/myPlant.dart';
import 'package:plant_growth_tracking_app/models/plant.dart';
import 'package:plant_growth_tracking_app/screens/home/components/trending.dart';

List<RecomendPlantCard> plants = [
  RecomendPlantCard(
    image: "assets/img1.jpg",
    title: "Samantha",
    country: "Russia",
    price: 440,
    press: () {},
  ),
  RecomendPlantCard(
    image: "assets/img2.jpg",
    title: "Angelica",
    country: "Russia",
    price: 440,
    press: () {},
  ),
  RecomendPlantCard(
    image: "assets/img3.jpg",
    title: "Samantha",
    country: "Russia",
    price: 440,
    press: () {},
  ),
  RecomendPlantCard(
    image: "assets/img4.jpg",
    title: "Samantha",
    country: "Russia",
    price: 440,
    press: () {},
  ),
  RecomendPlantCard(
    image: "assets/img5.jpg",
    title: "Angelica",
    country: "Russia",
    price: 440,
    press: () {},
  ),
  RecomendPlantCard(
    image: "assets/img6.jpg",
    title: "Samantha",
    country: "Russia",
    price: 440,
    press: () {},
  ),
  RecomendPlantCard(
    image: "assets/img7.jpg",
    title: "Angelica",
    country: "Russia",
    price: 440,
    press: () {},
  ),
  RecomendPlantCard(
    image: "assets/img8.jpg",
    title: "Samantha",
    country: "Russia",
    price: 440,
    press: () {},
  ),
];

List<Plant> getPlants() {
  List<Plant> plants = new List();
  Plant plant = new Plant();

  // 1
  plant.plantName = "Plant Name";
  plant.imgURL = "assets/img1.jpg";

  plants.add(plant);
  plant = new Plant();

  // 2
  plant.plantName = "Plant Name";
  plant.imgURL = "assets/img2.jpg";

  plants.add(plant);
  plant = new Plant();

  // 3
  plant.plantName = "Plant Name";
  plant.imgURL = "assets/img3.jpg";

  plants.add(plant);
  plant = new Plant();

  // 4
  plant.plantName = "Plant Name";
  plant.imgURL = "assets/img4.jpg";

  plants.add(plant);
  plant = new Plant();

  // 5
  plant.plantName = "Plant Name";
  plant.imgURL = "assets/img5.jpg";

  plants.add(plant);
  plant = new Plant();

  // 6
  plant.plantName = "Plant Name";
  plant.imgURL = "assets/img6.jpg";

  plants.add(plant);
  plant = new Plant();

  // 7
  plant.plantName = "Plant Name";
  plant.imgURL = "assets/img7.jpg";

  plants.add(plant);
  plant = new Plant();

  // 8
  plant.plantName = "Plant Name";
  plant.imgURL = "assets/img8.jpg";

  plants.add(plant);
  plant = new Plant();

  // 9
  plant.plantName = "Plant Name";
  plant.imgURL = "assets/img9.jpg";

  plants.add(plant);
  plant = new Plant();

  return plants;
}

List<MyPlant> getMyPlants() {
  List<MyPlant> myPlants = new List();
  MyPlant myPlant = new MyPlant();

  // 1
  myPlant.plantName = "Plant Name";
  myPlant.imgURL = "assets/img1.jpg";
  myPlant.details = "Details";
  myPlant.state = "Healthy";
  // myPlant.stateColor = lightGreen;

  myPlants.add(myPlant);
  myPlant = new MyPlant();

  // 2
  myPlant.plantName = "Plant Name";
  myPlant.imgURL = "assets/img2.jpg";
  myPlant.details = "Details";
  myPlant.state = "Healthy";
  // myPlant.stateColor = lightGreen;

  myPlants.add(myPlant);
  myPlant = new MyPlant();

  // 3
  myPlant.plantName = "Plant Name";
  myPlant.imgURL = "assets/img3.jpg";
  myPlant.details = "Details";
  myPlant.state = "Healthy";
  // myPlant.stateColor = lightGreen;

  myPlants.add(myPlant);
  myPlant = new MyPlant();

  // 4
  myPlant.plantName = "Plant Name";
  myPlant.imgURL = "assets/img4.jpg";
  myPlant.details = "Details";
  myPlant.state = "Healthy";
  // myPlant.stateColor = lightGreen;

  myPlants.add(myPlant);
  myPlant = new MyPlant();

  return myPlants;
}
