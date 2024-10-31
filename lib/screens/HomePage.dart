import 'package:flutter/material.dart';
import 'package:perfumery_app/screens/GetFormulaPage.dart';
import 'package:perfumery_app/widgets/customAppbar.dart';
import 'package:perfumery_app/widgets/menuItems.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      {
        'icon': 'assets/images/personlapIcon.png',
        'title': 'Get Your Own Formula',
        'click': () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GetFormulaPage(),
            ),
          );
        }
      },
      {
        'icon': 'assets/images/formulaicon.png',
        'title': 'My Formulas',
        'click': () {}
      },
      {
        'icon': 'assets/images/erlenmeyerIcon.png',
        'title': 'AskScentLab Materials',
        'click': () {}
      },
      {
        'icon': 'assets/images/perfumeIcon.png',
        'title': 'AskScentLab Perfume',
        'click': () {}
      },
    ];
    return Scaffold(
      appBar: CustomAppbar(
        height: 60,
        title: "Home Page",
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 50,
                      mainAxisSpacing: 50,
                    ),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: items[index]['click'],
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff194737),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 2,
                                child: Image.asset(
                                  items[index]['icon'],
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Flexible(
                                flex: 1,
                                child: Text(
                                  items[index]['title'],
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
