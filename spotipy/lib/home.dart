import 'dart:html';

import 'package:flutter/material.dart';
import 'package:spotipy/app_colors.dart' as app_Colors;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20.0),
          color: app_Colors.background,
          child: Column(
            children: [
              Row(
                children: const [
                  ImageIcon(AssetImage('img/menu.png'), size: 24.0),
                  Expanded(flex: 10, child: SizedBox()),
                  Icon(Icons.search, size: 24.0),
                  Expanded(flex: 1, child: SizedBox()),
                  Icon(Icons.notifications, size: 24.0),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Text(
                    "pupular Books",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              Container(
                height: 180,
                color: Colors.amber,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 180,
                        child: PageView.builder(
                          scrollDirection: Axis.vertical,
                          controller: PageController(viewportFraction: 1.0),
                          itemCount: 5,
                          itemBuilder: ((context, index) {
                            return Container(
                              height: 180,
                              margin: EdgeInsets.symmetric(vertical: 10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage('img/pic-8.png'),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text("EOT"),
            ],
          ),
        ),
      ),
    );
  }
}
