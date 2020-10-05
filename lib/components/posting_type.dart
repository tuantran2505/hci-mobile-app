import 'package:beanlancer_frontend/Objects/Posting.dart';
import 'package:beanlancer_frontend/Screens/StepperPostingPages/step_1_posting_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PostingType extends StatelessWidget {
  final String title;
  final String icon;
  final Function press;
  final Color color;
  const PostingType({
    Key key,
    this.title,
    this.icon,
    this.press,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newPost = new Posting(title);
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.01, vertical: size.height * 0.005),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          width: size.width * 0.47,
          height: size.height * 0.23,
          child: RaisedButton(
            color: color,
            onPressed: () {
              Navigator.push(
                  context,
                  (MaterialPageRoute(builder: (context) {
                    return Step01(posting: newPost);
                  })));
            },
            child: Column(
              children: [
                Container(
                  height: size.height * 0.04,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                    height: size.height * 0.15,
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      icon,
                      width: size.width * 0.2,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
