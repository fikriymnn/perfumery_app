import 'package:flutter/material.dart';
import 'package:perfumery_app/screens/GetFormulaPage.dart';
import 'package:perfumery_app/widgets/customAppbar.dart';
import 'package:perfumery_app/widgets/menuItems.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        height: 60,
        title: "Home Page",
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: MenuItem(
                    fct: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GetFormulaPage(),
                        ),
                      );
                    },
                    txt: "Get My Own Perfume",
                    img: "assets/images/personlapIcon.png",
                  ),
                ),
                Flexible(
                  child: MenuItem(
                    fct: () {},
                    txt: "My Formulas",
                    img: "assets/images/formulaicon.png",
                  ),
                ),
                Flexible(
                  child: MenuItem(
                    fct: () {},
                    txt: "Get Your Own Perfume",
                    img: "assets/images/askreatif_logo.jpeg",
                  ),
                ),
                Flexible(
                  child: MenuItem(
                    fct: () {},
                    txt: "Get Your Own Perfume",
                    img: "assets/images/askreatif_logo.jpeg",
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: SizedBox(
                    height: 300,
                    width: 300,
                  ),
                ),
                Flexible(
                  child: MenuItem(
                    fct: () {},
                    txt: "Get Your Own Perfume",
                    img: "assets/images/askreatif_logo.jpeg",
                  ),
                ),
                Flexible(
                  child: MenuItem(
                    fct: () {},
                    txt: "Get Your Own Perfume",
                    img: "assets/images/askreatif_logo.jpeg",
                  ),
                ),
                Flexible(
                  child: SizedBox(
                    height: 300,
                    width: 300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
