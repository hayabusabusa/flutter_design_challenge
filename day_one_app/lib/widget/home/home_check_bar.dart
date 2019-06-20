import 'package:flutter/material.dart';

class HomeCheckBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: Card(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.check,
                color: Theme.of(context).accentColor,
              ),
              SizedBox(width: 8.0,), // Spacer
              Expanded(
                child: Text(
                  'Cover Image',
                  style: Theme.of(context).textTheme.body1,
                ),
              ),
              SizedBox(width: 8.0,), // Spacer
              Switch(
                value: false,
                onChanged: (value) {},
              )
            ],
          ),
        ),
      ),
    );
  }
}