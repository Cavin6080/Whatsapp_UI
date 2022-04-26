import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 400,
        width: 400,
        child: Image.network(
            'https://www.incimages.com/uploaded_files/image/1920x1080/getty_517194189_373099.jpg'),
      ),
    );
  }
}
