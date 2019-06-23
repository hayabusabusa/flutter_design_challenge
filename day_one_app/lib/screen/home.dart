import 'package:day_one_app/widget/home/home_check_bar.dart';
import 'package:day_one_app/widget/home/home_date_label.dart';
import 'package:day_one_app/widget/home/home_discusion_label.dart';
import 'package:day_one_app/widget/home/home_image_container.dart';
import 'package:day_one_app/widget/home/home_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Home extends StatelessWidget {

  Widget _buildSlidingUpPanel(BuildContext context) {
    return SlidingUpPanel(
      // Panel configure
      maxHeight: MediaQuery.of(context).size.height * 0.8,
      minHeight: MediaQuery.of(context).size.height * 0.3,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24.0),
        topRight: Radius.circular(24.0),
      ),
      //backdropEnabled: true,
      // Panel Body
      panel: HomeListView(20),
      // Scaffold Body
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            HomeDateLabel(),
            SizedBox(height: 16.0,), // Spacer
            HomeDiscusionLabel(),
            SizedBox(height: 16.0,), // Spacer
            HomeImageContainer(),
            SizedBox(height: 16.0,), // Spacer
            HomeCheckBar(),
          ],
        ),
      ),
    );
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png')
                  )
                ),
              ),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: _buildSlidingUpPanel(context)
    );
  }
}