import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:line_icons/line_icons.dart';

void main() {
  runApp(Start());
}

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Portfolio(),
    );
  }
}

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.download,
                color: Colors.black87,
              ),
              label: Text(
                "Portfolio",
                style: TextStyle(color: Colors.black87),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color(0xfff5e960))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                LineIcons.instagram,
                color: Colors.black87,
              ),
              label: Text(
                "Instagram",
                style: TextStyle(color: Colors.black87),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color(0xfff5e960))),
            ),
          ),
        ],
        title: Text(
          "Jasmin",
          style: TextStyle(fontSize: 30, color: Colors.black87),
        ),
        backgroundColor: Color(0xffdfb2f4),
      ),
      backgroundColor: Color(0xfff5e960),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageSlideshow(
              autoPlayInterval: 3000,
              height: 600,
              width: 500,
              children: [
                Image.asset("m1.jpg"),
                Image.asset("m2.jpg"),
                Image.asset("m3.jpg"),
              ],
            ),
            Container(
              height: 600,
              width: 300,
              color: Color(0xff55d6c2),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Text(
                    """I’m Karlie Kloss, supermodel, entrepreneur and philanthropist. I started my career as a model, and have since discovered my passion for technology, entrepreneurship, & storytelling. When I’m not modeling, I spend my time working on my STEAM focused non-profit Kode With Klossy, my YouTube channel, Klossy, & supporting the next generation of designers on Project Runway.""",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xfff2f5ff)),
                  ),
                ),
              ),
            ),
            Container(
              height: 600,
              width: 300,
              color: Color(0xfff49097),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Height: 5.8",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xfff2f5ff),
                    ),
                  ),
                  Text(
                    "Face: Symmetric",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xfff2f5ff),
                    ),
                  ),
                  Text(
                    "Type: Runaway Model",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xfff2f5ff),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
