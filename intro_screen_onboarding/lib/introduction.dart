import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Introduction extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String subTitle;

  Introduction({this.imageUrl, this.title, this.subTitle});

  @override
  State<StatefulWidget> createState() {
    return new IntroductionState();
  }
}

class IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image(
                image: AssetImage(widget.imageUrl),
                height: 360.0,
                width: 360.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      height: 1.5,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              widget.subTitle,
              style:
                  TextStyle(color: Colors.black, fontSize: 22.0, height: 1.5),
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
