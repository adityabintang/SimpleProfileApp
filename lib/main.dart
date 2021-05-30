import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
    debugShowCheckedModeBanner: false,
  ));
}

//TODO 1
class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO 3
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        //TODO 2
        title: Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        //Shadow
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      //TODO 4 : make a padding
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          //TODO 6: membuat text menjadi rata kiri
          crossAxisAlignment: CrossAxisAlignment.start,

          //TODO 5 : make a column
          children: <Widget>[
            //TODO 15
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/photo.jpg"),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),

            //TODO 6: Make two text widget in column
            Text(
              "NAME",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),

            //TODO 7: Memberikan jarak pada text name
            SizedBox(height: 10.0),

            Text(
              "Aditya Bintang",
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            //TODO 8
            SizedBox(height: 30.0),

            //TODO 9
            Text(
              "CURRENT NINJA LEVEL",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),

            //TODO 10: Memberikan jarak pada text name
            SizedBox(height: 10.0),

            Text(
              "$ninjaLevel",
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            //TODO 11 : memberikan space pada text dibawahnya
            SizedBox(height: 30.0),

            //TODO 12
            Row(
              children: [
                //TODO 13
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                //TODO 15
                SizedBox(width: 10.0),

                //TODO 14
                Text(
                  "adityabintang149@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
