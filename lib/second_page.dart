import 'package:cnt3/home_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static const String id = "second_page";

  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Second Page"),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context,HomePage.id);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://cdn.pixabay.com/photo/2016/03/04/19/36/beach-1236581__340.jpg")
            )
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/fruit4.jfif",
                    ),
                  ),
                ),

                // color: Colors.greenAccent,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 100),
                        padding: const EdgeInsets.only(top: 50),
                        color: Colors.black,
                        height: 250,
                        width: 350,
                        child: Column(
                          children: [
                            Container(
                              height: 110,
                              width: 80,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                      )
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
