import 'package:flutter/material.dart';
import 'package:weebreader/components/Place.dart';
import 'package:weebreader/components/header.dart';
import 'package:weebreader/components/locationCard.dart';
import 'package:weebreader/constants.dart';

class myBody extends StatelessWidget {
  List<Place> places = [
    Place(
        name: "name", locationName: "locationName", image: 'assets/class1.png'),
    Place(name: "ISCTEM", locationName: "Baixa", image: 'assets/class2.png'),
    Place(name: "ISUTC", locationName: "Praia", image: 'assets/class3.png'),
    Place(name: "UEM", locationName: "COOP", image: 'assets/class4.png'),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearch(),
          SizedBox(height: 20),
          titleAndButton("Perto de si!", () {}),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: places.map((e) {
                return LocationCard(
                  size: size,
                  place: e,
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 20),
          titleAndButton("Perto de si!", () {}),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: places.map((e) {
                return LocationCard(
                  size: size,
                  place: e,
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Padding titleAndButton(String title, Function() event) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          FlatButton(
            color: kPrimaryColor,
            onPressed: event,
            child: Text(
              "Outros",
              style: TextStyle(color: Colors.white),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          )
        ],
      ),
    );
  }
}
