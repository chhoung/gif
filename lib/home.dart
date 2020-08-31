import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSad;

  @override
  void initState() {
    super.initState();
    isSad = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              isSad
                  ? 'https://media1.tenor.com/images/8a9c48bd8de465b549dc8684bf6404a4/tenor.gif?itemid=4649018'
                  : 'https://thumbs.gfycat.com/FreshSnappyGalapagosdove-size_restricted.gif',
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              // color: Colors.red,
              // height: MediaQuery.of(context).size.height,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    if (isSad) {
                      isSad = false;
                    } else {
                      isSad = true;
                    }
                  });
                },
                child: Text(
                  isSad ? 'happy boi' : 'sad boi',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
