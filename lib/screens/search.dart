import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:uiclone1/screens/activity.dart';
import 'package:uiclone1/screens/widgets/footer_tab_bar.dart';

class Search extends StatefulWidget {
  static const routeName = "/";
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "Search",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CupertinoSearchTextField(),
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
      bottomNavigationBar: FooterTabBar(),
    );
  }
}
