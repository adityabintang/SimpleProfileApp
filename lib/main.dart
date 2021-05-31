import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

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
        title: Text("ID Card"),
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
            SizedBox(height: 60.0),
            Container(
              child: ButtonTheme(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QouteList()));
                  },
                  child: Text(
                    "NEXT",
                    style: TextStyle(
                        color: Colors.black87,
                        letterSpacing: 1.0,
                        fontSize: 18.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amberAccent[200],
                    elevation: 10,
                    padding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 120),
                    minimumSize: Size(220, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QouteList extends StatefulWidget {
  @override
  _QouteListState createState() => _QouteListState();
}

class _QouteListState extends State<QouteList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Quote(),
    );
  }
}

class Quote extends StatefulWidget {
  @override
  _QuoteState createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {
  List<QuoteList> quotes = [
    QuoteList(author: 'aditya bintang', text: 'Follow Your Dreams'),
    QuoteList(
        author: 'aditya bintang',
        text: 'I have nothing to declare except my genius'),
    QuoteList(
        author: 'aditya bintang',
        text: 'The truth is rarely pure and never simple')
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
            SizedBox(height: 8.0),
            FlatButton.icon(
              onPressed: () {
                setState(() {
                  quotes.remove(quote);
                });
              },
              label: Text("delete quote"),
              icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Quote Awesome"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
