import 'package:flutter/material.dart';
import 'package:perfumery_app/screens/GetFormulaPage.dart';
import 'package:perfumery_app/widgets/customAppbar.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Uri _urlProduk = Uri.parse("https://www.askscentlab.com/produk");
  final Uri _urlMaterial =
      Uri.parse("https://www.askscentlab.com/produk_bahan");
  final Uri _urlMicroLab =
      Uri.parse("https://www.askscentlab.com/produk_labtool");

  Future<void> _launchUrlProduk() async {
    if (!await launchUrl(_urlProduk)) {
      throw Exception('Could not launch $_urlProduk');
    }
  }

  Future<void> _launchUrlMaterial() async {
    if (!await launchUrl(_urlMaterial)) {
      throw Exception('Could not launch $_urlMaterial');
    }
  }

  Future<void> _launchUrlMicroLab() async {
    if (!await launchUrl(_urlMicroLab)) {
      throw Exception('Could not launch $_urlMicroLab');
    }
  }

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
        'click': () {
          setState(() {
            _launchUrlMaterial();
          });
        }
      },
      {
        'icon': 'assets/images/perfumeIcon.png',
        'title': 'AskScentLab Perfume',
        'click': () {
          setState(() {
            _launchUrlProduk();
          });
        }
      },
      {
        'icon': 'assets/images/micro-lab-icon.png',
        'title': 'AskScentLab Microlab',
        'click': () {
          setState(() {
            _launchUrlMicroLab();
          });
        }
      },
    ];
    return Scaffold(
      appBar: CustomAppbar(
        height: 60,
        title: "Home",
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
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
                                      fontSize: 22,
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
            ),
          )),
    );
  }
}
