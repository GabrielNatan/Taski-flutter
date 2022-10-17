import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: const Color.fromARGB(255, 62, 55, 255),
        title: const Padding(
          padding: EdgeInsets.only(left: 32),
          child: Text(
            'Taski',
            style: TextStyle(
              fontFamily: 'Kaushan', 
              fontSize: 30
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
              decoration: const BoxDecoration(
            color: Colors.white,
          ))
        ],
      ),
    );
  }
}
