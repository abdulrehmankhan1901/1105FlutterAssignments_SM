import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task3_1105_bsse6/rowButton.dart';
import 'package:task3_1105_bsse6/secondScreen.dart';
import 'locationImage.dart';
//import 'constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

//enum colour { teal, grey }

class _HomeScreenState extends State<HomeScreen> {
  double sBoxW = 66;
  double sBoxH = 70;
  Color selectedI = Colors.grey;
  Color selectedT = Colors.grey;
  Color selectedC = Colors.grey;
  Color selectedV = Colors.grey;
  Color selectedS = Colors.grey;
  void updateColor(String loc) {
    if (loc == 'i') {
      selectedI = Colors.teal;
      selectedT = Colors.grey;
      selectedC = Colors.grey;
      selectedV = Colors.grey;
      selectedS = Colors.grey;
    } else if (loc == 't') {
      selectedI = Colors.grey;
      selectedT = Colors.teal;
      selectedC = Colors.grey;
      selectedV = Colors.grey;
      selectedS = Colors.grey;
    } else if (loc == 'c') {
      selectedI = Colors.grey;
      selectedT = Colors.grey;
      selectedC = Colors.teal;
      selectedV = Colors.grey;
      selectedS = Colors.grey;
    } else if (loc == 'v') {
      selectedI = Colors.grey;
      selectedT = Colors.grey;
      selectedC = Colors.grey;
      selectedV = Colors.teal;
      selectedS = Colors.grey;
    } else {
      selectedI = Colors.grey;
      selectedT = Colors.grey;
      selectedC = Colors.grey;
      selectedV = Colors.grey;
      selectedS = Colors.teal;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(40, 20, 40, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Center(child: Text('Discover')),
                    Icon(Icons.search)
                  ]),
            ),
            Container(
              height: sBoxH,
              margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: sBoxW,
                    child: GestureDetector(
                      onTap: (() {
                        setState(() {
                          updateColor('i');
                        });
                      }),
                      child: rowButton(
                        col: selectedI,
                        text: "Indonesia",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: sBoxW,
                    child: GestureDetector(
                      onTap: (() {
                        setState(() {
                          updateColor('t');
                        });
                      }),
                      child: rowButton(
                        col: selectedT,
                        text: "Thailand",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: sBoxW,
                    child: GestureDetector(
                      onTap: (() {
                        setState(() {
                          updateColor('c');
                        });
                      }),
                      child: rowButton(
                        col: selectedC,
                        text: "China",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: sBoxW,
                    child: GestureDetector(
                      onTap: (() {
                        setState(() {
                          updateColor('v');
                        });
                      }),
                      child: rowButton(
                        col: selectedV,
                        text: "Vietnam",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: sBoxW,
                    child: GestureDetector(
                      onTap: (() {
                        setState(() {
                          updateColor('s');
                        });
                      }),
                      child: rowButton(
                        col: selectedS,
                        text: "Srilanka",
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  FlatButton(
                    onPressed: null,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          LocationImage(iString: 'rndimg.jpg', rating: '4.7'),
                          Row(
                            children: [
                              Text('Random',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              SizedBox(
                                height: 0,
                                width: 20,
                              ),
                              Icon(
                                FontAwesomeIcons.ellipsisVertical,
                                size: 16,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.bed,
                                color: Colors.teal,
                                size: 12,
                              ),
                              Text('  Hotels'),
                              SizedBox(
                                height: 0,
                                width: 50,
                              ),
                            ],
                          )
                        ]),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondScreen()));
                    },
                    child: Column(children: [
                      LocationImage(iString: 'bali.jpg', rating: '4.7'),
                      Row(
                        children: [
                          Text('Bali Island',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          SizedBox(
                            height: 0,
                            width: 20,
                          ),
                          Icon(
                            FontAwesomeIcons.ellipsisVertical,
                            size: 16,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.bed,
                            color: Colors.teal,
                            size: 12,
                          ),
                          Text('  Hotels'),
                          SizedBox(
                            height: 0,
                            width: 50,
                          ),
                        ],
                      )
                    ]),
                  ),
                  FlatButton(
                    onPressed: null,
                    child: Column(children: [
                      LocationImage(iString: 'rndimg.jpg', rating: '4.7'),
                      Row(
                        children: [
                          Text('Random',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          SizedBox(
                            height: 0,
                            width: 20,
                          ),
                          Icon(
                            FontAwesomeIcons.ellipsisVertical,
                            size: 16,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.bed,
                            color: Colors.teal,
                            size: 12,
                          ),
                          Text('  Hotels'),
                          SizedBox(
                            height: 0,
                            width: 50,
                          ),
                        ],
                      )
                    ]),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 10, 40, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Destinations',
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
                margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Row(
                  children: [
                    Expanded(
                        child: Card(
                      child: ListTile(
                        leading: Image(
                          image: AssetImage('images/bandung.jpg'),
                          height: 70,
                          width: 70,
                        ),
                        title: Text(
                          'Bandung',
                          style: TextStyle(fontSize: 12),
                        ),
                        subtitle: Text(
                          'West Java',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    )),
                    Expanded(
                        child: Card(
                      child: ListTile(
                        leading: Image(
                          image: AssetImage('images/lombok.png'),
                          height: 70,
                          width: 70,
                        ),
                        title: Text(
                          'Lombok',
                          style: TextStyle(fontSize: 12),
                        ),
                        subtitle: Text(
                          'NTB',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ))
                  ],
                )),
            FlatButton(
                onPressed: null,
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.teal),
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                        Icon(
                          FontAwesomeIcons.home,
                          color: Colors.white,
                        ),
                        Icon(
                          FontAwesomeIcons.compass,
                          color: Colors.grey,
                        ),
                        Icon(
                          FontAwesomeIcons.star,
                          color: Colors.grey,
                        ),
                        Icon(
                          FontAwesomeIcons.user,
                          color: Colors.grey,
                        )
                      ])),
                ))
          ],
        ),
      ),
    );
  }
}
