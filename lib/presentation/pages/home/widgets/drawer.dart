import 'package:flutter/material.dart';
import 'package:my_app/core/framework/colors.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: background,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: background,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(color: fontColorPrimary),
            ),
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.home, color: fontColorPrimary),
                Text(
                  'PelisLa',
                  style: TextStyle(color: fontColorPrimary),
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
                Icon(Icons.star, color: fontColorPrimary),
                Text(
                  'Populares',
                  style: TextStyle(color: fontColorPrimary),
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
