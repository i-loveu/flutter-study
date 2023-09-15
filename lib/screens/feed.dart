import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uiclone1/screens/post.dart';
import 'package:uiclone1/screens/widgets/footer_tab_bar.dart';

class Feed extends StatefulWidget {
  static const routeName = "/feed";
  Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  int _selectedIndex = 0;

  void _onItemTapped(int index, BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FaIcon(FontAwesomeIcons.instagram),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
      ),
      bottomNavigationBar: FooterTabBar(),
    );
  }
}
