import 'package:flutter/material.dart';
import 'package:music_palyer/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: new IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
          color: Colors.black,
        ),
        title: Text(widget.title),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //seek bar
            Expanded(child: Center(child: Container(
              width: 125.0,
              height: 125.0,
              
            ))),
            //Visualizer
            new Container(
              width: double.infinity,
              height: 125.0,
            ),
            //Song title, artist and controls
            Container(
              color: accentColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 20.0),
                child: Column(
                  children: <Widget>[
                    RichText(
                        text: TextSpan(text: "", children: [
                      TextSpan(
                          text: 'Song Title\n',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 4.0,
                              height: 1.5)),
                      TextSpan(
                          text: "Artist Name",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.75),
                              fontSize: 12.0,
                              letterSpacing: 3.0,
                              height: 4.5))
                    ])),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(child: Container()),
                          IconButton(
                            icon: Icon(Icons.skip_previous),
                            onPressed: () {},
                            color: Colors.white,
                            iconSize: 35.0,
                          ),
                          Expanded(child: Container()),
                          RawMaterialButton(
                            shape: CircleBorder(),
                            fillColor: Colors.white,
                            splashColor: lightAccentColor,
                            highlightColor: lightAccentColor.withOpacity(0.5),
                            elevation: 10.0,
                            highlightElevation: 5.0,
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.play_arrow,
                                color: darkAccentColor,
                                size: 35.0,
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          IconButton(
                            icon: Icon(Icons.skip_next),
                            onPressed: () {},
                            color: Colors.white,
                            iconSize: 35.0,
                          ),
                          Expanded(child: Container()),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
