import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:uiclone1/screens/search.dart';
import 'package:uiclone1/screens/widgets/footer_tab_bar.dart';

class Activity extends StatelessWidget {
  static const routeName = "/activity";

  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    final int _selectedIndex = 3;

    final tabs = [
      "All",
      "Replies",
      "Mentions",
      "Veeee",
      "Comment",
      "Likes",
      "Thumbs",
      "Flowers",
      "Flowers"
    ];

    void _onItemTapped(int index, BuildContext context) {
      if (index == 3) {
        context.go(Activity.routeName);
      }
      if (index == 1) {
        context.go(Search.routeName);
      }
    }

    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: tabs.length,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                const Text(
                  "Activity",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TabBar(
                  isScrollable: true,
                  labelColor: Theme.of(context).tabBarTheme.labelColor,
                  tabs: [
                    for (var tab in tabs) Tab(text: tab),
                  ],
                ),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Container(
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.users,
                            ),
                          ),
                        ),
                        title: Text("rjmithun"),
                        subtitle: Text("Mithun"),
                        trailing: TextButton(
                          onPressed: () {},
                          child: Text("Follow"),
                        ),
                      ),
                      ListTile(
                        leading: Container(
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.users,
                            ),
                          ),
                        ),
                        title: Text("rjmithun"),
                        subtitle: Text("Mithun"),
                        trailing: TextButton(
                          onPressed: () {},
                          child: Text("Follow"),
                        ),
                      ),
                      ListTile(
                        leading: Container(
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.users,
                            ),
                          ),
                        ),
                        title: Text("rjmithun"),
                        subtitle: Text("Mithun"),
                        trailing: TextButton(
                          onPressed: () {},
                          child: Text("Follow"),
                        ),
                      ),
                      ListTile(
                        leading: Container(
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.users,
                            ),
                          ),
                        ),
                        title: Row(
                          children: [
                            Text("rjmithun"),
                            FaIcon(
                              FontAwesomeIcons.solidCircleCheck,
                            ),
                          ],
                        ),
                        subtitle: Text("Mithun"),
                        trailing: TextButton(
                          onPressed: () {},
                          child: Text("Follow"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: FooterTabBar(),
    );
  }
}
