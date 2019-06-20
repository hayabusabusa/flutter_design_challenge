import 'package:flutter/material.dart';

class HomeImageContainer extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        color: Colors.grey[200],
        image: DecorationImage(
          image: NetworkImage('https://picsum.photos/250?image=9'),
          fit: BoxFit.cover
        )
      ),
    );
  }
}