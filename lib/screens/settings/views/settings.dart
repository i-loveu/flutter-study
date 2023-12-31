import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:uiclone1/screens/settings/view_models/dark_mode_config_vm.dart';

class Settings extends ConsumerWidget {
  static const routeName = "/settings";
  const Settings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            value: ref.watch(darkModeConfigProvider).darkMode,
            onChanged: (value) {
              ref.read(darkModeConfigProvider.notifier).setDarkMode(value);
            },
            title: const Text("dark mode"),
          ),
          ListTile(
            leading: Container(
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.lock,
                ),
              ),
            ),
            title: Text("Privacy"),
          ),
          ListTile(
            title: Text("logout"),
            onTap: () {
              showCupertinoDialog(
                context: context,
                builder: (context) => CupertinoAlertDialog(
                  title: Text("Are you sure?"),
                  actions: [
                    CupertinoDialogAction(
                      child: Text("No"),
                    ),
                    CupertinoDialogAction(
                      isDestructiveAction: true,
                      child: Text("Yes"),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
