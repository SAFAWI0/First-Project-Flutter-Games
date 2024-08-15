import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 95, 171, 241),
      appBar: AppBar(
        title: Text(
          "تطابق الصوره",
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int left = 1;
  int right = 1;
  void changimage() {
    left = Random().nextInt(8) + 1;
    right = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          left == right ? " مبروووووك لقد نجحت" : "! حاول مرة اخرى ",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                // flex: ,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changimage();
                    });
                    print(' اطبع لك الاولة');
                  },
                  child: Image(
                    image: AssetImage('images/image-$left.png'),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changimage();
                    });
                    print(' اطبع لك الثانية');
                  },
                  child: Image(
                    image: AssetImage('images/image-$right.png'),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
