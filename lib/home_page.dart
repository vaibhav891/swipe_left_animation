import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(viewportFraction: 1);
  double currentPage = 0.0;

  @override
  void didChangeDependencies() {
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: PageView.builder(
        controller: pageController,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Transform(
            origin: Offset(0, MediaQuery.of(context).size.height),
            transform: Matrix4.identity()..rotateX(index - currentPage),
            child: MyContainer(
              index: index,
            ),
          );
        },
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final index;

  MyContainer({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(vertical: 150, horizontal: 5),
      color: Colors.amber,
      child: Center(
          child: index == 0
              ? Icon(
                  Icons.adb,
                  size: 50,
                )
              : index == 1
                  ? Icon(
                      Icons.add_a_photo,
                      size: 50,
                    )
                  : Icon(
                      Icons.add_call,
                      size: 50,
                    )),
    );
  }
}
