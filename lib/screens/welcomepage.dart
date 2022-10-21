import 'package:child_learning_app/screens/Counting.dart';
import 'package:child_learning_app/screens/alphabets.dart';
import 'package:child_learning_app/screens/colours.dart';
import 'package:flutter/material.dart';
import 'package:child_learning_app/widgets/category_card.dart';

class WelcomePage extends StatelessWidget {
  final List<Widget> _categories = [
    CategoryCard(
      title: 'Colors',
      primaryColor: Colors.orangeAccent,
      secondaryColor: Colors.orange,
      screen: ColorsScreen(
        title: 'Colors',
        primaryColor: Colors.orangeAccent,
        secondaryColor: Colors.orange,
      ), key: 
    ),
    // ignore: prefer_const_constructors
    CategoryCard(
      title: 'ABC',
      primaryColor: Colors.purpleAccent,
      secondaryColor: Colors.purple,
      screen: AlphabetsScreen(
        title: 'ABC',
        primaryColor: Colors.purpleAccent,
        secondaryColor: Colors.purple,
      ), 
    ),
    CategoryCard(
      title: '123',
      primaryColor: Colors.greenAccent,
      secondaryColor: Colors.green,
      screen: CountingScreen(
        title: '123',
        primaryColor: Colors.greenAccent,
        secondaryColor: Colors.green,
      ), key: null, 
    )
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[50],
          image: DecorationImage(
            image: AssetImage('assets/images/alpha.png'),
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 188.0,
              backgroundColor: Colors.grey[50],
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/numbers.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(_categories),
            ),
          ],
        ),
      ),
    );
  }
}
