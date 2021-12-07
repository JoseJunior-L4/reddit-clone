import 'package:flutter/material.dart';
import 'package:weebreader/constants.dart';

class HeaderWithSearch extends StatefulWidget {
  @override
  _HeaderWithSearchState createState() => _HeaderWithSearchState();
}

class _HeaderWithSearchState extends State<HeaderWithSearch> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return myHeader(size);
  }
}

Container myHeader(Size size) {
  return Container(
    height: size.height * .2,
    child: Stack(
      children: [
        Container(
          height: size.height * 0.2 - 27,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              )),
          child: Row(
            children: [Text("Insert Logo here")],
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              child: TextField(
                style: TextStyle(
                  color: kPrimaryColor.withOpacity(.5),
                ),
                decoration: InputDecoration(
                  suffixIcon:
                      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  hintText: "Pesquisar",
                  hintStyle: TextStyle(
                    color: kPrimaryColor.withOpacity(.5),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.3))
                  ]),
            ))
      ],
    ),
  );
}
