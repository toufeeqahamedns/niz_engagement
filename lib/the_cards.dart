import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

var ringImage = AssetImage("assets/ring.png");
var ringImg = Image(image: ringImage, fit: BoxFit.cover);
var inviteImage = AssetImage("assets/invited.png");
var inviteImg = Image(image: inviteImage, fit: BoxFit.fill);
var mapImage = AssetImage("assets/map.png");
var mapImg = Image(image: mapImage, fit: BoxFit.cover);
var dateImage = AssetImage("assets/date.jpg");
var dateImg = Image(image: dateImage, fit: BoxFit.cover);

final List<Widget> headings = <Widget>[
  Text("Fulfill a Promise of Lifetime",
      style: TextStyle(fontStyle: FontStyle.italic, fontSize: 32.0)),
  Text("Be there", style: TextStyle(fontSize: 32.0)),
  Text("On", style: TextStyle(fontSize: 32.0)),
  Text("Venue", style: TextStyle(fontSize: 32.0)),
];

final List<Widget> cards = <Widget>[
  Card(
      margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 60.0),
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Stack(
          alignment: AlignmentDirectional.centerStart,
          fit: StackFit.expand,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: ringImg),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
                child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(100, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Center(
                      child: Text(
                        "Nizam is getting Enganged!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    )),
              ),
            ),
            Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  onTap: () {},
                ))
          ])),
  Card(
    margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 60.0),
    elevation: 20.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    ),
    child: Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.expand,
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: inviteImg),
          Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                onTap: () {},
              ))
        ]),
  ),
  Card(
    margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 60.0),
    elevation: 20.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    ),
    child: Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.expand,
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: dateImg),
          Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                onTap: () {},
              ))
        ]),
  ),
  Card(
    margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 60.0),
    elevation: 20.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    ),
    child: Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.expand,
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: mapImg),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.touch_app,
                size: 40.0,
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0)),
              child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(100, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: Center(
                    child: Text(
                      "Hotel Durgada Siri",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  )),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                onTap: () => _launchMap()),
          )
        ]),
  ),
];

_launchMap() async {
  const url =
      "https://www.google.com/maps/place/Hotel+Durgada+Siri/@14.2315664,76.4069747,17z/data=!4m5!3m4!1s0x3bba758cccf39c81:0xdc0d69c7076582d5!8m2!3d14.2315612!4d76.4091634";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch Maps';
  }
}

final List child = map<Widget>(cards, (index, i) {
  return Container(
    width: 400.0,
    child: i,
  );
}).toList();

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}

class TheCards extends StatefulWidget {
  @override
  _TheCardsState createState() => _TheCardsState();
}

class _TheCardsState extends State<TheCards> {
  var _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 48.0, top: 24.0, bottom: 24.0),
        child:
            Align(alignment: Alignment.centerLeft, child: headings[_current]),
      ),
      CarouselSlider(
        height: MediaQuery.of(context).size.height * 0.75,
        items: child,
        autoPlay: true,
        enlargeCenterPage: true,
        pauseAutoPlayOnTouch: Duration(seconds: 4),
        onPageChanged: (index) {
          setState(() {
            _current = index;
          });
        },
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: map<Widget>(
          cards,
          (index, i) {
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4)),
            );
          },
        ),
      ),
    ]);
  }
}
