import 'package:facebook_clone/sections/chatRoomSection.dart';
import 'package:facebook_clone/sections/headerButtonSection.dart';

import 'package:facebook_clone/sections/statusSections.dart';
import 'package:facebook_clone/sections/storySection.dart';
import 'package:facebook_clone/widget/appBarButton.dart';
import 'package:facebook_clone/widget/asset.dart';
import 'package:facebook_clone/widget/postBottom.dart';
import 'package:facebook_clone/widget/postButton.dart';
import 'package:facebook_clone/widget/postCard.dart';
import 'package:facebook_clone/widget/status.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'facebook',
          style: TextStyle(color: Colors.blue[400], fontSize: 30),
        ),
        actions: [
          appBarButon(buttonAction: () {}, buttonIcon: Icons.search),
          appBarButon(buttonAction: () {}, buttonIcon: Icons.chat)
        ],
      ),
      body: ListView(
        children: [
          statusSection(),
          Divider(
            thickness: 1.5,
            color: Colors.grey[300],
          ),
          headerButtonSection(),
          Divider(
            thickness: 10,
            color: Colors.grey[300],
          ),
          chatRoomSection(),
          Divider(
            thickness: 10,
            color: Colors.grey[300],
          ),
          storySection(),
          Divider(
            thickness: 10,
            color: Colors.grey[300],
          ),
          postCard(
            avatarImage: elon,
            name: 'Elon musk',
            time: '6h',
            postImage: elonSt,
          ),
          postBottom(),
          postButton(),
          Divider(
            thickness: 10,
            color: Colors.grey[300],
          ),
          postCard(
              avatarImage: jeffBezos,
              name: "Jeff Bezos",
              time: '12h',
              postImage: jeffBezosSt),
          postBottom(),
          postButton(),
          Divider(
            thickness: 10,
            color: Colors.grey[300],
          ),
        ],
      ),
    );
  }
}
