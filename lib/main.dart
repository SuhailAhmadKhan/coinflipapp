import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainPage());
  }
}
class MainPage extends StatefulWidget {
  const MainPage
      ({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String head = "Heads";
  String tail = "Tails";
  bool x = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Flip The Coin"),
            backgroundColor: Colors.red,
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  x ? head : tail,
                  style: TextStyle(fontSize: 30),
                ),
                Image.asset(
                  x ? "images/heads.png" : "images/tails.png",
                ),


                ElevatedButton(
                  onPressed: () {
                    x = !x;
                    print(x);
                    setState(() {});
                  },
                  child: Text("Turn"),
                )
              ],
            ),
          ),
        )
    );
  }


}
