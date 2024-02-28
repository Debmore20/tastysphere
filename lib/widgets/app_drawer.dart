import 'package:flutter/material.dart';
import 'package:tastysphere/style/main_style.dart';

import 'nav_item.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Drawer(
      semanticLabel: 'Navigation Menu',
      width: screenWidth * 0.8,
      shape: const ContinuousRectangleBorder(),
      child: Container(
        color: AppStyle.colorTwo,
        child: const Column(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Column(
              children: navitems,
            ),
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
