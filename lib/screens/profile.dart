import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart';
import 'package:uiclone1/screens/settings/views/settings.dart';
import 'package:uiclone1/screens/widgets/footer_tab_bar.dart';
import 'package:uiclone1/screens/widgets/persistant_tab_bar.dart';

class Profile extends StatelessWidget {
  static const routeName = "/profile";
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final int _selectedIndex = 4;

    void _onGearPressed() {
      context.push(Settings.routeName);
    }

    void _onItemTapped(int index, BuildContext context) {
      if (index == 3) {}
    }

    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.instagram,
                      ),
                    ),
                    IconButton(
                      onPressed: _onGearPressed,
                      icon: FaIcon(
                        FontAwesomeIcons.gear,
                      ),
                    ),
                  ],
                ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Text("Ahntae"),
                    ],
                  ),
                ),
                SliverPersistentHeader(
                  delegate: PersistentTabBar(),
                  pinned: true,
                  floating: true,
                ),
              ];
            },
            body: TabBarView(
              children: [
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
                    ],
                  ),
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
