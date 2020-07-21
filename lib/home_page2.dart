import 'package:flutter/material.dart';

class HomePageTwo extends StatelessWidget {
  final PageController pageController = PageController(viewportFraction: 0.7);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      body: ListWheelScrollView(
        useMagnifier: true,
        //magnification: 1.1,
        diameterRatio: 2,
        perspective: 0.003,
        offAxisFraction: -0.5,
        itemExtent: 100,
        children: [
          SingleCard(
            text: 'this',
          ),
          SingleCard(
            text: 'is',
          ),
          SingleCard(
            text: 'sample',
          ),
          SingleCard(
            text: 'text',
          ),
          SingleCard(
            text: 'text',
          ),
          SingleCard(
            text: 'text',
          ),
          SingleCard(
            text: 'text',
          ),
          SingleCard(
            text: 'text',
          ),
          SingleCard(
            text: 'text',
          ),
          SingleCard(
            text: 'text',
          ),
          SingleCard(
            text: 'text',
          ),
          SingleCard(
            text: 'text',
          ),
          SingleCard(
            text: 'text',
          ),
          SingleCard(
            text: 'text',
          ),
          SingleCard(
            text: 'text',
          ),
          SingleCard(
            text: 'text',
          ),
          SingleCard(
            text: 'text',
          ),
          SingleCard(
            text: 'text',
          ),
          SingleCard(
            text: 'text',
          ),
          SingleCard(
            text: 'text',
          ),
        ],
      ),
    );
  }
}

class SingleCard extends StatelessWidget {
  final text;

  const SingleCard({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 100,
      width: 300,
      color: Colors.blue,
      child: Center(child: Text(text, style: TextStyle(fontSize: 30),)),
    );
  }
}
