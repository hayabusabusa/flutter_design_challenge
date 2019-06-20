import 'package:flutter/material.dart';

class HomeDiscusionLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'DISCUSION',
            style: Theme.of(context).textTheme.body2.merge(
              TextStyle(color: Theme.of(context).accentColor)
            ),
          ),
          Text(
            'ABOUT FLUTTER AND\n'
            'ATOMIC DESIGN.',
            style: Theme.of(context).textTheme.title.merge(
              TextStyle(color: Colors.white)
            ),
          ),
        ],
      ),
    );
  }
}