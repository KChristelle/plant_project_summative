import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/data/data.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class PlantSpeciesSelector extends StatefulWidget {
  @override
  _PlantSpeciesSelectorState createState() => _PlantSpeciesSelectorState();
}

class _PlantSpeciesSelectorState extends State<PlantSpeciesSelector> {
  String _selectedPlant;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: Text(""),
      value: _selectedPlant,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 12,
      elevation: 12,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: kTextColor,
      ),
      underline: Container(
        height: 1,
        color: Color(0xffBBB7B7),
      ),
      onChanged: (newValue) {
        setState(() {
          _selectedPlant = newValue;
        });
      },
      items: plantSpecies.map((plant) {
        return DropdownMenuItem(
          child: Text(plant),
          value: plant,
        );
      }).toList(),
    );
  }
}

class PlantLocationSelector extends StatefulWidget {
  @override
  _PlantLocationSelectorState createState() => _PlantLocationSelectorState();
}

class _PlantLocationSelectorState extends State<PlantLocationSelector> {
  String _selectedLocation;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: Text(""),
      value: _selectedLocation,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 12,
      elevation: 12,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: kTextColor,
      ),
      underline: Container(
        height: 1,
        color: Color(0xffBBB7B7),
      ),
      onChanged: (newValue) {
        setState(() {
          _selectedLocation = newValue;
        });
      },
      items: plantLocation.map((location) {
        return DropdownMenuItem(
          child: Text(location),
          value: location,
        );
      }).toList(),
    );
  }
}

class PlantDescriptionSelector extends StatefulWidget {
  @override
  _PlantDescriptionSelectorState createState() =>
      _PlantDescriptionSelectorState();
}

class _PlantDescriptionSelectorState extends State<PlantDescriptionSelector> {
  String _selectedDesc;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: Text(""),
      value: _selectedDesc,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 12,
      elevation: 12,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.1,
        color: kTextColor.withOpacity(0.7),
      ),
      underline: Container(
        height: 1,
        color: Color(0xffBBB7B7),
      ),
      onChanged: (newValue) {
        setState(() {
          _selectedDesc = newValue;
        });
      },
      items: plantDesc.map((desc) {
        return DropdownMenuItem(
          child: Text(desc),
          value: desc,
        );
      }).toList(),
    );
  }
}
