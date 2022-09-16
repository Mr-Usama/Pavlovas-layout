import 'package:flutter/material.dart';

//function to trigger build
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my first UI',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ), // ThemeData
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    ); // MaterialApp
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("my first UI"),
      ), // AppBar
      // App body consists of single Row
      // Row consists of three children widgets
      body: Container(
        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Strawberry Pavlova',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.5,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '''Pavlova is a meringue-based
dessert named after the Russian
ballerine Anna Pavlova.
Pavlova features a crisp crust and
soft, light inside, topped with fruit 
and whipped cream.
                ''',
                  style: TextStyle(
                    fontFamily: 'Georgia',
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_rate,
                      color: Colors.redAccent,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: Colors.redAccent,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: Colors.redAccent,
                    ),
                    Icon(
                      Icons.star_rate,
                    ),
                    Icon(
                      Icons.star_rate,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '170 Reviews',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Roboto',
                        letterSpacing: 0.5,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.kitchen,
                          color: Colors.green,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [Text('PREP'), Text(':')],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text('25 min'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.timer,
                          color: Colors.green,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [Text('COOK'), Text(':')],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text('1 hr'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.restaurant,
                          color: Colors.green,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [Text('FEEDS'), Text(':')],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text('4-6'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 5,
            ),
            Image.asset(
              'assets/images/pexels-oleksandr-pidvalnyi-1172253.jpg',
              fit: BoxFit.fill,
              height: 300,
              width: 104,
            ),
          ],
        ),
      ),
    );
  }
}
