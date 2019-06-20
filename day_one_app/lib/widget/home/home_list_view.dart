import 'package:flutter/material.dart';

class HomeListView extends StatelessWidget {
  int _itemCount;

  HomeListView(
    this._itemCount
  );

  Widget _buildListItem(int index) {
    return index == 0 
      ? Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: <Widget>[
            Text('Project Title'),
            SizedBox(height: 16.0,), // Spacer
            Text('Description'),
            SizedBox(height: 16.0,), // Spacer
            Text('About')
          ],
        ),
      )
      : Container(
        child: Text('item ${index-1}'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // Panel none scroll widget
      margin: const EdgeInsets.only(top: 40.0),
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: ListView.builder(
        itemCount: _itemCount,
        itemBuilder: (BuildContext context, int index) {
          return _buildListItem(index);
        },
      ),
    );
  }
}