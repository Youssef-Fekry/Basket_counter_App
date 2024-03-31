import 'package:flutter/material.dart';

void main() {
  runApp(PointCounter());
}

class PointCounter extends StatefulWidget {
  @override
  State<PointCounter> createState() => _PointCounterState();
}

class _PointCounterState extends State<PointCounter> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Point Counter'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  const Text(
                    'Team A',
                    style: TextStyle(
                      fontSize: 34,
                    ),
                  ),
                  Text(
                    '$teamApoints',
                     style: TextStyle(
                      fontSize: 100,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50)),
                    onPressed: () {
                      setState(() {
                        teamApoints++;
                      });
                    },
                    child: Text(
                      'Add 1 Point',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamApoints += 2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50)),
                    onPressed: () {
                      setState(() {
                        teamApoints += 3;
                      });
                    },
                    child: Text(
                      'Add 3 Point',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 350,
                  child: VerticalDivider(
                    thickness: 1,
                  ),
                ),
                Column(children: [
                  Text(
                    'Team B',
                    style: TextStyle(
                      fontSize: 34,
                    ),
                  ),
                  Text(
                    '$teamBpoints',
                    style: TextStyle(
                      fontSize: 100,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50)),
                    onPressed: () {
                      setState(() {
                        teamBpoints++;
                      });
                    },
                    child: Text(
                      'Add 1 Point',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamBpoints += 2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50)),
                    onPressed: () {
                      setState(() {
                        teamBpoints += 3;
                      });
                    },
                    child: Text(
                      'Add 3 Point',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ]),
              ],
            ),
            SizedBox(
              height: 90,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, minimumSize: Size(150, 50)),
              onPressed: () {
                setState(() {
                  teamApoints = 0;
                  teamBpoints = 0;
                });
              },
              child: Text(
                'reset',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
