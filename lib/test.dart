
import 'package:flutter/material.dart';

class YoutubeAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              actions: <Widget>[

                InkWell(
                    onTap: () {
                      print ('Click Profile Pic');
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/images/profile_pic.png',),
                    )

                )
              ],
            ),
            body: Container(
              decoration: BoxDecoration(color: Colors.grey),
            )));
  }
}