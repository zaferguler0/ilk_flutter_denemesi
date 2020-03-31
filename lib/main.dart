import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.orange,
      ),
      home: new Scaffold(
        appBar: AppBar(
          title: Text(
            "Zafer Güler",
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Tıklandı");
          },
          backgroundColor: Colors.red,
          child: Icon(
            Icons.access_alarm,
          ),
        ),
        body: Column(
          children: <Widget>[
            Text(
              "Image ve Buton Türleri",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset("assets/images/zafer.png"),
                      Text("Image"),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.network(
                          "https://lh3.googleusercontent.com/proxy/c6wSz65CtNAwx8DCFxXDgaNtkVXF7CxkOsYgzlnhLJznw_GYJHQ2iOz9KmHV3sOu0nNPKKd3MlCm9Pmjk9drbFFqfYh8JRR2gXQQLZHJSanvH0vG5nleS_etHODdPGSCSJU4sGsDhHp7"),
                      Text("Network Image"),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png"),
                        backgroundColor: Colors.white,
                        radius: 30,
                      ),
                      Text("Zafer"),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 55),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Zafer Güler"),
                    color: Colors.orange,
                    onPressed: () => debugPrint("Fat arrow"),
                  ),
                  RaisedButton(
                    child: Text("Zafer Güler ve Flutter Dersleri"),
                    elevation: 12,
                    textColor: Colors.pink,
                    color: Colors.yellow,
                    onPressed: () {
                      uzunyazi();
                    },
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.alarm,
                        size: 50,
                      ),
                      onPressed: () => debugPrint("asd")),
                  FlatButton(
                    onPressed: null,
                    child: Text(
                      "flatbutton",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

void uzunyazi() {
  debugPrint("Void Fonksiyonu çağırdım");
}


class MyApp  {

}