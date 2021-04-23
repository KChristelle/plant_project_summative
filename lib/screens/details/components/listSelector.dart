import 'package:flutter/material.dart';
import 'package:plant_growth_tracking_app/data/data.dart';
import 'package:plant_growth_tracking_app/resources/constants.dart';

class PlantSpeciesSelector extends StatefulWidget {
  PlantSpeciesSelector(this.index);
  final int index;
  @override
  _PlantSpeciesSelectorState createState() => _PlantSpeciesSelectorState(index);
}

class _PlantSpeciesSelectorState extends State<PlantSpeciesSelector> {
  _PlantSpeciesSelectorState(this.index);
  final int index;
  String _selectedPlant;
  @override
  Widget build(BuildContext context) {

    return Text("${plantSpecies[index]}");
    // return DropdownButton(
    //   hint: Text(""),
    //   value: _selectedPlant,
    //   icon: Icon(Icons.arrow_drop_down),
    //   iconSize: 12,
    //   elevation: 12,
    //   style: TextStyle(
    //     fontSize: 12,
    //     fontWeight: FontWeight.w400,
    //     letterSpacing: 0.5,
    //     color: kTextColor,
    //   ),
    //   underline: Container(
    //     height: 1,
    //     color: Color(0xffBBB7B7),
    //   ),
    //   onChanged: (newValue) {
    //     setState(() {
    //       _selectedPlant = newValue;
    //     });
    //   },
    //   items: plantSpecies.map((plant) {
    //     return DropdownMenuItem(
    //       child: Text(plant),
    //       value: plant,
    //     );
    //   }).toList(),
    // );
  }
}

class PlantLocationSelector extends StatefulWidget {
  PlantLocationSelector (this.index);
  final int index;
  @override
  _PlantLocationSelectorState createState() => _PlantLocationSelectorState(index);
}

class _PlantLocationSelectorState extends State<PlantLocationSelector> {
  //String _selectedLocation;
    _PlantLocationSelectorState(this.index);
    final int index;
    String _selectedPlant;
    @override
    Widget build(BuildContext context) {

      return Text("${plantLocation[index]}");
    // return DropdownButton(
    //   hint: Text(""),
    //   value: _selectedLocation,
    //   icon: Icon(Icons.arrow_drop_down),
    //   iconSize: 12,
    //   elevation: 12,
    //   style: TextStyle(
    //     fontSize: 12,
    //     fontWeight: FontWeight.w400,
    //     letterSpacing: 0.5,
    //     color: kTextColor,
    //   ),
    //   underline: Container(
    //     height: 1,
    //     color: Color(0xffBBB7B7),
    //   ),
    //   onChanged: (newValue) {
    //     setState(() {
    //       _selectedLocation = newValue;
    //     });
    //   },
    //   items: plantLocation.map((location) {
    //     return DropdownMenuItem(
    //       child: Text(location),
    //       value: location,
    //     );
    //   }).toList(),
    // );
  }
}

class PlantDescriptionSelector extends StatefulWidget {
  PlantDescriptionSelector(this.index);
  final int index;
  @override
  _PlantDescriptionSelectorState createState() =>
      _PlantDescriptionSelectorState(index);
}

class _PlantDescriptionSelectorState extends State<PlantDescriptionSelector> {
  //String _selectedDesc;
  _PlantDescriptionSelectorState(this.index);
  final int index;

  @override
  Widget build(BuildContext context) {

    return Text("${plantDesc[index]}");
    // return DropdownButton(
    //   isExpanded: true,
    //   hint: Text(""),
    //   value: _selectedDesc,
    //   icon: Icon(Icons.arrow_drop_down),
    //   iconSize: 12,
    //   elevation: 12,
    //   style: TextStyle(
    //     fontSize: 12,
    //     fontWeight: FontWeight.w400,
    //     letterSpacing: 0.1,
    //     color: kTextColor.withOpacity(0.7),
    //   ),
    //   underline: Container(
    //     height: 1,
    //     color: Color(0xffBBB7B7),
    //   ),
    //   onChanged: (newValue) {
    //     setState(() {
    //       _selectedDesc = newValue;
    //     });
    //   },
    //   items: plantDesc.map((desc) {
    //     return DropdownMenuItem(
    //       child: Text(desc),
    //       value: desc,
    //     );
    //   }).toList(),
    // );
  }
}

class DaysSelector extends StatefulWidget {
  @override
  _DaysSelectorState createState() => _DaysSelectorState();
}

class _DaysSelectorState extends State<DaysSelector> {
  List<String> days = ['1', '2', '3', '4', '5', '6', '7'];
  String _selectedDay;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: Text("0"),
      value: _selectedDay,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 16,
      elevation: 16,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: kTextColor,
      ),
      underline: Container(
        height: 1,
        color: Color(0xffBBB7B7),
      ),
      onChanged: (newValue) {
        setState(() {
          _selectedDay = newValue;
        });
      },
      items: days.map((day) {
        return DropdownMenuItem(
          child: Text(day),
          value: day,
        );
      }).toList(),
    );
  }
}
