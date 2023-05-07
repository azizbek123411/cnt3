import 'package:cnt3/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpkJhOWGmLvxpxJAcxmG6P7c2DrunwL9DQbw&usqp=CAU"),
              fit: BoxFit.cover,
            )
        ),
        padding: const EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                color: Colors.red,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        height: 150,
                        width: 150,
                        color: Colors.green,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, SecondPage.id);
                          },
                          child: const Text(
                            "NEXT",
                            style: TextStyle(fontSize: 28),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
