import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String text;

  const CustomAppbar({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.blueGrey,
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              text,
              style: TextStyle(
                  letterSpacing: 1,
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite,
            color: Colors.black,
          ),
        ),
      ],
      elevation: 0,
    );
  }
}
