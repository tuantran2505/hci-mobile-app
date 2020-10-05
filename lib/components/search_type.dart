import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchType extends StatelessWidget {
  final String title;
  final String icon;
  final Function press;
  final Color color;
  const SearchType({
    Key key,
    this.title,
    this.icon,
    this.press,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.015, vertical: size.height * 0.01),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          width: size.width * 0.45,
          height: size.height * 0.23,
          color: color,
          child: Column(
            children: [
              Container(
                  height: size.height * 0.13,
                  alignment: Alignment.center,
                  child: Image.asset(
                    icon,
                    width: size.width * 0.22,
                  )),
              Container(
                height: size.height * 0.08,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                alignment: Alignment.topCenter,
                child: Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
