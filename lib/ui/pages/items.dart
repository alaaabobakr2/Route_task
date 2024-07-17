import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    var primaryColor = const Color(0XFF004182);
    var mediaQuery = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.grey,
              )),
          margin: EdgeInsets.all(4),
          child: Column(
            children: [
              Container(
                width: mediaQuery.width * 0.5,
                height: mediaQuery.height * 0.12,
                child: Image.asset(
                  'assets/images/item.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    Text("""Nike Air Jordon"""
                        """ Nike shoes flexible for wo.."""),
                    Row(
                      children: [
                        Text(
                          'EGP 1,200 ',
                          style: TextStyle(fontSize: 13),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '2000 EGP ',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Review',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          '(4.6)',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.star_outlined,
                          size: 17,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 145,
          left: 140,
          child: Icon(
            Icons.add_circle,
            size: 28,
            color: primaryColor,
          ),
        ),
        Positioned(
          top: 8,
          left: 140,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            height: 30,
            width: 30,
            child: Icon(
              Icons.favorite_border,
              size: 25,
              color: primaryColor,
            ),
          ),
        ),
        Positioned(
          top: 144,
          left: 90,
          child: Container(
            height: 1.5,
            width: 40,
           color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
