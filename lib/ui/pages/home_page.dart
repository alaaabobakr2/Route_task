import 'package:flutter/material.dart';
import 'package:pro_1/ui/pages/items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var primaryColor = const Color(0XFF004182);
    var mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/route.png',
          width: mediaQuery.width * 0.2,
          height: mediaQuery.height * 0.25,
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.only(left: 14, top: 10),
                margin: EdgeInsets.only(left: 16),
                width: mediaQuery.width * 0.8,
                height: mediaQuery.height * 0.065,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: primaryColor),
                ),
                child: Row(
                  children: [
                    Icon(
                        Icons.search,
                      size: 30,
                      color: primaryColor,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "what do you search for?",
                        hintStyle: TextStyle(
                            color: Colors.black45,
                            fontSize: 10,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.shopping_cart_outlined,
                size: 30,
                color: primaryColor,
              ),
            ],
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Items(),
                Items(),
                Items(),
                Items(),
                Items(),
                Items(),
                Items(),
                Items(),
                Items(),
                Items(),
                Items(),
                Items(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//