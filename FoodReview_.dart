import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
      home: Rating(),
    ));

class Rating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: _getFormattedText(text: 'Food of the day', size: 25),
          leading: Container(
            child: IconButton(
              onPressed: () {
                _getSnackBarMessage(
                    message: 'This button is in preparation', context: context);
              },
              icon: Icon(Icons.menu),
              iconSize: 30,
            ),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 4)),
          ),
          actions: [
            Container(
              child: IconButton(
                onPressed: () {
                  _getSnackBarMessage(
                      message: 'Food is ordered!', context: context);
                },
                tooltip: 'Order this food',
                icon: Icon(Icons.add_alert),
                iconSize: 30,
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 4)),
            ),
            Container(
              child: IconButton(
                onPressed: () {
                  _getSnackBarMessage(
                      message: 'Searching food...', context: context);
                },
                tooltip: 'Search other food',
                icon: Icon(Icons.search),
                iconSize: 30,
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 4)),
              margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
            )
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.lightGreenAccent, width: 5)),
                  child: Image(
                    image: NetworkImage(
                        'https://bakerjo.co.uk/wp-content/uploads/2020/07/IMG_1492.jpg'),
                  ),
                  height: 330,
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent, width: 5)),
                    child: _getReviewSummary()),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.purpleAccent, width: 5)),
                  child: _getFoodDetails(),
                ),
                Container(
                  child: _getFormattedText(
                      text:
                          'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. It has a crisp crust and soft, light inside, usually topped with fruit and whipped cream.',
                      size: 17),
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 5)),
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.red, width: 7)),
        ));
  }

  ScaffoldFeatureController _getSnackBarMessage(
      {required String message, required BuildContext context}) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: Duration(milliseconds: 900),
    ));
  }

  Widget _getFoodDetails() {
    return Row(
      children: [
        _getFoodDetailPrepTime(),
        _getFoodDetailCookingTime(),
        _getFoodDetailFeedingTime()
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    );
  }

  Widget _getFoodDetailPrepTime() {
    return Container(
      child: Column(
        children: [
          Icon(
            Icons.kitchen,
            color: Colors.green,
          ),
          _getFormattedText(text: 'PREP:', size: 15),
          SizedBox(
            height: 10,
          ),
          _getFormattedText(text: '25 min', size: 13)
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.yellow, width: 5),
      ),
    );
  }

  Widget _getFoodDetailCookingTime() {
    return Container(
      child: Column(
        children: [
          Icon(
            Icons.timelapse,
            color: Colors.green,
          ),
          _getFormattedText(text: 'COOK:', size: 15),
          SizedBox(
            height: 10,
          ),
          _getFormattedText(text: '1 hr', size: 13)
        ],
      ),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.purple, width: 5)),
    );
  }

  Widget _getFoodDetailFeedingTime() {
    return Container(
      child: Column(
        children: [
          Icon(
            Icons.restaurant,
            color: Colors.green,
          ),
          _getFormattedText(text: 'FEEDS:', size: 15),
          SizedBox(
            height: 10,
          ),
          _getFormattedText(text: '4-6', size: 13)
        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.greenAccent, width: 5)),
    );
  }

  Widget _getReviewSummary() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: _getFiveStars(),
          decoration:
              BoxDecoration(border: Border.all(color: Colors.black, width: 5)),
        ),
        Container(
          child: _getFormattedText(text: '170 Reviews', size: 20),
          decoration:
              BoxDecoration(border: Border.all(color: Colors.orange, width: 5)),
        )
      ],
    );
  }

  Widget _getFiveStars() {
    return Row(
      children: [
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star)
      ],
    );
  }

  Widget _getFormattedText({required String text, required double size}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size, letterSpacing: 0.5, fontWeight: FontWeight.w800),
    );
  }
}
