import 'package:flutter/material.dart';

import 'dart:math';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  String name = '';
  String selectedCategory = 'Select Category';
  List<String> categories = ['Select Category','fight', 'robbery', 'disaster', 'terrorist'];
  double? latitude;
  double? longitude;
  bool isLocationChecked = false;

  void _getRandomLocation() {
    // Generate random latitude and longitude
    var random = Random();
    latitude = 34.0522 + random.nextDouble() * 10.0; // Random latitude between 34.0522 and 44.0522
    longitude = -118.2437 + random.nextDouble() * 10.0; // Random longitude between -118.2437 and -108.2437
    setState(() {});
  }

  void _showHelpMessageSent() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Your help message has been sent.\nSuperhero will arrive soon!'),
        duration: Duration(seconds: 3),
      ),
    );

    // Set the checkbox to empty
    setState(() {
      isLocationChecked = false;
    });
  }

  void _clearFields() {
    setState(() {
      name = '';
      selectedCategory = categories[0]; // Set the first category as default
      latitude = null;
      longitude = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ask Your Hero For Help",
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Enter Your Name',
                  hintText: "MyName",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: selectedCategory,
              onChanged: (String? newValue) {
                setState(() {
                  selectedCategory = newValue!;
                });
              },
              items: categories.map((String category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Select Category',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Checkbox(
                  value: isLocationChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isLocationChecked = value!;
                      if (isLocationChecked) {
                        _getRandomLocation();
                      } else {
                        latitude = null;
                        longitude = null;
                      }
                    });
                  },
                ),
                Text(
                  "Give My current Location",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Submit button onPressed logic here
                _showHelpMessageSent();
                _clearFields();
                print('Name: $name');
                print('Selected Category: $selectedCategory');
                print('Latitude: $latitude');
                print('Longitude: $longitude');
                name = "";
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                primary: Colors.blueAccent,
                minimumSize: Size(100, 50), // Set width and height of the button
              ),
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
