import 'package:flutter/material.dart';
import 'package:weebreader/constants.dart';
import 'Place.dart';

class LocationCard extends StatelessWidget {
  final Size size;
  final Place place;

  LocationCard({required this.size, required this.place});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("object");
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        width: size.width * .4,
        height: size.height * .3,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: kPrimaryColor.withOpacity(0.5),
                offset: Offset(0, 1),
                blurRadius: 2,
                spreadRadius: 1,
              )
            ],
            image: DecorationImage(
              image: AssetImage(this.place.image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: kBackgroundColor.withOpacity(0.3),
                child: Text(
                  this.place.name,
                  style: TextStyle(color: kBackgroundColor),
                ),
              ),
              Container(
                color: kBackgroundColor.withOpacity(0.3),
                child: Text(
                  this.place.locationName,
                  style: TextStyle(color: kBackgroundColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
