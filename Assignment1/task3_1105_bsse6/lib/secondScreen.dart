import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task3_1105_bsse6/activityImage.dart';
import 'package:bottom_drawer/bottom_drawer.dart';
import 'tiles.dart';

BottomDrawerController controller = BottomDrawerController();

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: AssetImage('images/bali.jpg'),
                        fit: BoxFit.fill)),
              ),
              Container(
                  height: 30,
                  width: 30,
                  margin: EdgeInsets.fromLTRB(25, 25, 0, 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.5)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios,
                        color: Colors.white, size: 15),
                  )),
              Container(
                  height: 30,
                  width: 30,
                  margin: EdgeInsets.fromLTRB(300, 105, 25, 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.5)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(FontAwesomeIcons.image,
                        color: Colors.white, size: 15),
                  )),
              Container(
                height: 30,
                width: 30,
                margin: EdgeInsets.fromLTRB(300, 105, 25, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(0.5)),
                child: Center(
                    child: Icon(
                  FontAwesomeIcons.image,
                  size: 10,
                  color: Colors.white,
                )),
              ),
              Container(
                height: 30,
                width: 30,
                margin: EdgeInsets.fromLTRB(300, 150, 25, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(0.5)),
                child: Center(
                    child: Text(
                  '4.7',
                  style: TextStyle(color: Colors.white),
                )),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 10, 0, 0),
            width: double.infinity,
            child: Text(
                'Also known as the land of the Gods, Bali appeals through its sheer natural beauty of looming volcanoes and lush terraced rice fields that exude peace.'),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Activity',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'View All',
                  style: TextStyle(color: Colors.teal),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(25, 10, 0, 0),
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ActivityImage(
                      iString: 'snorkling.jpg',
                      activity: 'Snorkling',
                      people: '3.7k',
                      col: Colors.teal),
                  ActivityImage(
                      iString: 'snorkling.jpg',
                      activity: 'Snorkling',
                      people: '3.7k',
                      col: Colors.red)
                ],
              )),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white70),
              child: Container(
                margin: EdgeInsets.fromLTRB(25, 5, 0, 0),
                child: TextButton(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                          child: Text('_____',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey))),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '17 Feb.',
                            style: TextStyle(color: Colors.grey),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Odesa - Bali',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey)),
                          Text('\$987',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey)),
                        ],
                      ),
                      Container(
                          alignment: Alignment.bottomLeft,
                          child: Text('02.55 - 19.55',
                              style: TextStyle(color: Colors.grey)))
                    ],
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Wrap(
                              children: [
                                Center(
                                    child: Text('_____',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey))),
                                SizedBox(
                                  height: 10,
                                ),
                                Center(
                                  child: Text('Details',
                                      style: TextStyle(color: Colors.black)),
                                ),
                                Center(
                                  child: Text('17 February 2021',
                                      style: TextStyle(color: Colors.grey)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                        height: 60,
                                        width: 50,
                                        child: Column(
                                          children: [
                                            Container(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'From',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'ODS',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                'Odessa',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ],
                                        )),
                                    Center(
                                      child: Row(
                                        children: [
                                          Text(
                                            '-------',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                          Icon(
                                            FontAwesomeIcons.plane,
                                            color: Colors.teal,
                                          ),
                                          Text(
                                            '-------',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                        height: 60,
                                        width: 65,
                                        child: Column(
                                          children: [
                                            Container(
                                              alignment: Alignment.topRight,
                                              child: Text(
                                                'To',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                'GNR',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.bottomRight,
                                              child: Text(
                                                'G. Ngurah Rai',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Text('Sort by: ',
                                              style: TextStyle(
                                                  color: Colors.grey)),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(200),
                                                color: Color.fromARGB(
                                                    255, 223, 223, 223)),
                                            child: TextButton(
                                              onPressed: null,
                                              child: Text(
                                                'Price   v',
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 160, 160, 160)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        alignment: Alignment.centerRight,
                                        child: Icon(FontAwesomeIcons.sliders))
                                  ],
                                ),
                                Tiles(
                                    iString: 'emirates.png',
                                    type: 'Business',
                                    price: '987',
                                    col: Colors.teal),
                                Tiles(
                                    iString: 'delta.jpg',
                                    type: 'Business',
                                    price: '782',
                                    col: Color.fromARGB(255, 218, 218, 218)),
                                Tiles(
                                    iString: 'lufthansa.png',
                                    type: 'Business',
                                    price: '612',
                                    col: Color.fromARGB(255, 218, 218, 218)),
                                Tiles(
                                    iString: 'airasia.png',
                                    type: 'Economy',
                                    price: '553',
                                    col: Color.fromARGB(255, 218, 218, 218)),
                                Container(
                                  margin: EdgeInsets.fromLTRB(25, 5, 25, 0),
                                  width: 310,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.teal),
                                  child: Center(
                                      child: Text(
                                    'Book',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )),
                                )
                              ],
                            ),
                          );
                        });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
