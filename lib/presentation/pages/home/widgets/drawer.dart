import 'package:flutter/material.dart';
import 'package:my_app/core/framework/colors.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorsTheme.background,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: ColorsTheme.background,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(color: ColorsTheme.fontColorPrimary),
            ),
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.home, color: ColorsTheme.fontColorPrimary),
                Text(
                  'PelisLa',
                  style: TextStyle(color: ColorsTheme.fontColorPrimary),
                ),
              ],
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.star, color: ColorsTheme.fontColorPrimary),
                Text(
                  'Populares',
                  style: TextStyle(color: ColorsTheme.fontColorPrimary),
                ),
              ],
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
