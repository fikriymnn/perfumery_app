import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;
  const CustomAppbar({super.key, required this.title, required this.height});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff194737),
      leadingWidth: 100,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Image.asset(
        'assets/images/askreatif_logo.jpeg',
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.person_2_rounded),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.cartShopping),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.phone),
          color: Colors.white,
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}
