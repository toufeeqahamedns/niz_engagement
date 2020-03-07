import 'package:flutter/material.dart';
import 'package:niz_engagement/app_backgroung.dart';
import 'package:niz_engagement/the_cards.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: Stack(
          children: <Widget>[
            AppBackground(),
            TheCards(),
          ],
        ),
      ),
    );
  }
}