import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/screens/home/components/featuredCard.dart';
import 'package:plant_growth_tracking_app/screens/home/components/recommendCard.dart';
import 'package:plant_growth_tracking_app/screens/home/components/usersPlantCard.dart';
import 'package:plant_growth_tracking_app/screens/reminders/components/checklistCard.dart';

List plantID = ["", ""];
List plantHealth = [90, 100];
List plantURL = ["assets/img1.jpg", "assets/img2.jpg"];

// plant species/names
List<String> plantSpecies = ['Aloe Vera', 'Cactus'];

// plant locations
List<String> plantLocation = ['Indoor', 'Outdoor'];

// plant descriptions
List<String> plantDesc = [
  "Aloe vera is a short-stemmed plant growing to 60–100 centimetres tall, spreading by offsets. The leaves are thick and fleshy, green to grey-green, with some varieties showing white flecks on their upper and lower stem surfaces.",
  "Cactus generally have thick herbaceous or woody chlorophyll-containing stems.",
];

List<FeaturedPlantCard> featuredplants = [
  FeaturedPlantCard(
    image: "assets/img1.jpg",
    title: "Samantha",
    country: "Russia",
    location: "Living Room",
    action: Icon(Icons.add_circle),
    press: () {},
  ),
  FeaturedPlantCard(
    image: "assets/img2.jpg",
    title: "Angelica",
    country: "Russia",
    location: "Living Room",
    action: Icon(Icons.add_circle),
    press: () {},
  ),
  FeaturedPlantCard(
    image: "assets/img3.jpg",
    title: "Samantha",
    country: "Russia",
    location: "Living Room",
    action: Icon(Icons.add_circle),
    press: () {},
  ),
  FeaturedPlantCard(
    image: "assets/img4.jpg",
    title: "Samantha",
    country: "Russia",
    location: "Living Room",
    action: Icon(Icons.add_circle),
    press: () {},
  ),
  FeaturedPlantCard(
    image: "assets/img5.jpg",
    title: "Angelica",
    country: "Russia",
    location: "Living Room",
    action: Icon(Icons.add_circle),
    press: () {},
  ),
  FeaturedPlantCard(
    image: "assets/img6.jpg",
    title: "Samantha",
    country: "Russia",
    location: "Living Room",
    action: Icon(Icons.add_circle),
    press: () {},
  ),
  FeaturedPlantCard(
    image: "assets/img7.jpg",
    title: "Angelica",
    country: "Russia",
    location: "Living Room",
    action: Icon(Icons.add_circle),
    press: () {},
  ),
  FeaturedPlantCard(
    image: "assets/img8.jpg",
    title: "Samantha",
    country: "Russia",
    location: "Living Room",
    action: Icon(Icons.add_circle),
    press: () {},
  ),
];

List<RecommendPlantCard> recommendedplants = [
  RecommendPlantCard(
    image: "assets/img1.jpg",
    title: "Samantha",
    country: "Russia",
    action: Icon(Icons.add_circle),
    location: "Living Room",
    press: () {},
  ),
  RecommendPlantCard(
    image: "assets/img2.jpg",
    title: "Angelica",
    country: "Russia",
    action: Icon(Icons.add_circle),
    location: "Living Room",
    press: () {},
  ),
  RecommendPlantCard(
    image: "assets/img3.jpg",
    title: "Samantha",
    country: "Russia",
    action: Icon(Icons.add_circle),
    location: "Living Room",
    press: () {},
  ),
  RecommendPlantCard(
    image: "assets/img4.jpg",
    title: "Samantha",
    country: "Russia",
    action: Icon(Icons.add_circle),
    location: "Living Room",
    press: () {},
  ),
  RecommendPlantCard(
    image: "assets/img5.jpg",
    title: "Angelica",
    country: "Russia",
    action: Icon(Icons.add_circle),
    location: "Living Room",
    press: () {},
  ),
  RecommendPlantCard(
    image: "assets/img6.jpg",
    title: "Samantha",
    country: "Russia",
    action: Icon(Icons.add_circle),
    location: "Living Room",
    press: () {},
  ),
  RecommendPlantCard(
    image: "assets/img7.jpg",
    title: "Angelica",
    country: "Russia",
    action: Icon(Icons.add_circle),
    location: "Living Room",
    press: () {},
  ),
  RecommendPlantCard(
    image: "assets/img8.jpg",
    title: "Samantha",
    country: "Russia",
    action: Icon(Icons.add_circle),
    location: "Living Room",
    press: () {},
  ),
];

List<UserPlantCard> userplants = [
  UserPlantCard(
    image: "assets/img8.jpg",
    title: "Samantha",
    country: "Russia",
    action: Icon(Icons.add_circle),
    location: "Living Room",
    press: () {},
  ),
  UserPlantCard(
    image: "assets/img2.jpg",
    title: "Angelica",
    country: "Russia",
    action: Icon(Icons.add_circle),
    location: "Living Room",
    press: () {},
  ),
  UserPlantCard(
    image: "assets/img3.jpg",
    title: "Samantha",
    country: "Russia",
    action: Icon(Icons.add_circle),
    location: "Living Room",
    press: () {},
  ),
  UserPlantCard(
    image: "assets/img4.jpg",
    title: "Samantha",
    country: "Russia",
    action: Icon(Icons.add_circle),
    location: "Living Room",
    press: () {},
  ),
];

List<ChecklistCard> checklist = [
  ChecklistCard(
    image: "assets/img1.jpg",
    icon: Icon(Icons.water_damage_outlined),
    category: "Watering",
    plantTitle: "Aloe Vera",
    time: "10:00 AM",
    action: false,
  ),
  ChecklistCard(
    image: "assets/img2.jpg",
    icon: Icon(Icons.water_damage_outlined),
    category: "Fertilize",
    plantTitle: "Aloe Vera",
    time: "10:00 AM",
    action: false,
  ),
  ChecklistCard(
    image: "assets/img3.jpg",
    icon: Icon(Icons.water_damage_outlined),
    category: "Sunlight",
    plantTitle: "Cactus",
    time: "10:00 AM",
    action: false,
  ),
];
