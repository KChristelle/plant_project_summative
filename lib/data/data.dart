import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/screens/reminders/components/checklistCard.dart';

int plantindex = plantSpecies.length;

List<String> plantSpecies = [
  'Aloe Vera',
  'Compact Corn',
  'Kentia Palm',
  'Fiddle Leaf Pig',
  'Burgundy Rubber',
  'Green Prayer',
  'Croton',
];
List<String> plantLocation = [
  'Indoor',
  'Outdoor',
  'Office',
  'Indoor',
  'Indoor',
  'Outdoor',
  'Office',
];
List<String> plantDesc = [
  "Aloe vera is a short-stemmed plant growing to 60–100 centimetres tall, spreading by offsets. The leaves are thick and fleshy, green to grey-green, with some varieties showing white flecks on their upper and lower stem surfaces.",
  "The compact dragon plant is a tree-like cane plant with sword-shaped arching leaves that grow in clumps atop the stalks. Very easy to care for, can handle bright to low light.",
  "Long arching, feathered, dark green leaves. Likes bright to medium light, within 10 feet of a bright window.",
  "Chic and dramatic, but temperamental. Large deep green leaves give this plant structure and make it a perfect statement piece. Needs bright light, within 4 feet of a window ideally, can handle up to 10 if it is a very bright window (6 hours of light, south facing).",
  "Gorgeous shiny deep green leaves with burgundy veination. Prefers bright light but can tolerate medium (up to 10 feet from window).",
  "This beautiful plant is known for its dark green leaves with striking white veination. Its natural habit is of a creeping ground-cover and it will grow outward from its pot, eventually trailing.",
  "Multicolored leaves in red, yellow, orange, and green. This tropical plant is commonly planted in resort areas and is a low-maintenance plant once given the right conditions.",
];
List<String> imgURL = [
  "assets/img1.jpg",
  "assets/img2.jpg",
  "assets/img3.jpg",
  "assets/img4.jpg",
  "assets/img5.jpg",
  "assets/img6.jpg",
  "assets/img7.jpg",
];

// UPDATE WITH SET CARE OPTIONS
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
];
