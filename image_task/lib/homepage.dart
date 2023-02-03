import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyApp'),
      ),
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (ctx, index) {
            return Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 8,
                  margin: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.asset(
                          'assets/woman.jpg',
                          fit: BoxFit.fitWidth,
                          height: 200,
                          width: 350,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, top: 15, bottom: 5),
                        child: Text(
                          'Pub 1',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(bottom: 15.0, left: 15, right: 15),
                        child: Text(
                          'Location 1',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 8,
                  margin: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.network(
                          fit: BoxFit.fitWidth,
                          height: 200,
                          width: 350,
                          'https://cdn.pixabay.com/photo/2022/12/30/20/11/rose-7687604_640.jpg',
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, top: 15, bottom: 5),
                        child: Text(
                          'Pub 1',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(bottom: 15.0, left: 15, right: 15),
                        child: Text(
                          'Location 1',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
