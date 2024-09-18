import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  final GestureTapCallback fct;
  final String txt;
  final String img;
  const MenuItem(
      {super.key, required this.fct, required this.txt, required this.img});

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.fct,
      child: Container(
        margin: EdgeInsets.all(12.0),
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          color: Color(0xff194737),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                widget.img,
                fit: BoxFit.contain,
                height: 200,
                width: 200,
              ),
            ),
            Text(
              widget.txt,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
