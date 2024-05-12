import 'package:flutter/material.dart';

class Desing extends StatelessWidget {
  const Desing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
            child: Image.asset('assets/download.png'),
          ),
          Positioned(
            top: 17,
            left: 17,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://via.placeholder.com/600/771796',
                width: MediaQuery.of(context).size.width * 0.21,
              ),
            ),
          ),
          Positioned(
            top: 45,
            left: 115,
            child: Text(
              'Your College Name your College n...',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 65,
            left: 115,
            child: Text(
              'Your College, Name',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 125,
            left: 22,
            child: Text(
              'University',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 145,
            left: 22,
            child: Text(
              'University of Delhi',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 175,
            left: 22,
            child: Text(
              'No of courses',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 195,
            left: 22,
            child: Text(
              '14',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 175,
            left: 230,
            child: Text(
              'Established in',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 195,
            left: 230,
            child: Text(
              '1967',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              bottom: 25,
              left: 22,
              child: Row(
                children: [
                  CustomContainer(text: 'A++'),
                  CustomContainer(text: 'A++'),
                  CustomContainer(text: 'A++'),
                  CustomContainer(text: 'A++'),
                ],
              )),
        ],
      ),
    );
  }
}

// Code of custom container

class CustomContainer extends StatelessWidget {
  final String text;

  const CustomContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red.shade100,
            borderRadius: BorderRadius.circular(50)),
        height: 20,
        width: 40,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.red, fontSize: 12),
          ),
        ),
      ),
    );
  }
}
