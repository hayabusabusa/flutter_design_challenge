import 'package:flutter/material.dart';

class HomeDateLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'JUN',
            style: Theme.of(context).textTheme.body2.merge(
              TextStyle(color: Theme.of(context).accentColor)
            ),
          ),
          Text(
            '07',
            style: Theme.of(context).textTheme.title.merge(
              TextStyle(color: Colors.white)
            ),
          )
        ],
      ),
    );
  }
}