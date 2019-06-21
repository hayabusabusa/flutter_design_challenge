import 'package:day_one_app/widget/home/home_list_card.dart';
import 'package:flutter/material.dart';

class HomeListView extends StatelessWidget {
  int _itemCount;

  HomeListView(
    this._itemCount
  );

  Widget _buildListItem(BuildContext context, int index) {
    return index == 0 
      ? Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Project Title',
              style: Theme.of(context).textTheme.body2,
            ),
            SizedBox(height: 16.0,), // Spacer
            Text(
              'Description\n'
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n'
              'Integer congue risus leo, non laoreet felis luctus at.\n'
              'Nam iaculis volutpat lectus nec consectetur. ',
              style: Theme.of(context).textTheme.body1,
            ),
            SizedBox(height: 16.0,), // Spacer
            Text(
              'Pellentesque enim est, faucibus eget nisl dictum, '
              'sodales tempus urna. Aenean pulvinar elementum mi, '
              'a tincidunt nulla molestie et. In non elit sed lacus posuere convallis a sit amet nibh. '
              'In hac habitasse platea dictumst. Nullam fermentum elit elit, '
              'vel vestibulum libero tempus non. Integer fermentum vestibulum blandit. '
              'Duis dui ipsum, vehicula a tortor eget, pulvinar rutrum dolor. Fusce porta facilisis ex, '
              'ac maximus libero aliquet id. Ut vel magna vitae libero condimentum dapibus. Ut ac auctor magna. '
              'Aenean cursus leo est, a laoreet elit lacinia at. Donec non suscipit neque. Integer nunc enim, '
              'efficitur eu rhoncus eget, pellentesque vel risus. Maecenas nec tellus quis libero laoreet semper.',
              style: Theme.of(context).textTheme.caption,
            ),
            SizedBox(height: 16.0,), // Spacer
          ],
        ),
      )
      : HomeListCard();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // Panel none scroll widget
      margin: const EdgeInsets.only(top: 56.0),
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: ListView.builder(
        itemCount: _itemCount,
        itemBuilder: (BuildContext context, int index) {
          return _buildListItem(context, index);
        },
      ),
    );
  }
}