import 'package:car_meta/ui/common/reusable_widgets/cities.dart';
import 'package:flutter/material.dart';

class CitySelectionSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Cities.cityNames.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(Cities.cityNames[index]),
          onTap: () {
            // Code to handle city selection
            Navigator.pop(context, Cities.cityNames[index]);
          },
        );
      },
    );
  }
}