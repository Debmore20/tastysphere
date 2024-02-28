import 'package:flutter/material.dart';
import 'package:tastysphere/style/main_style.dart';

class NavItem extends StatelessWidget {
  const NavItem({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: TextButton(
          onPressed: () {},
          style: ButtonStyle(
            shape: const MaterialStatePropertyAll(ContinuousRectangleBorder(
                side: BorderSide(color: AppStyle.transparent))),
            foregroundColor:
                const MaterialStatePropertyAll<Color>(AppStyle.textColorOne),
            overlayColor: MaterialStatePropertyAll<Color>(AppStyle.colorTwo),
            elevation: const MaterialStatePropertyAll<double>(0),
            backgroundColor:
                const MaterialStatePropertyAll<Color>(Colors.transparent),
          ),
          child: Text(title)),
    );
  }
}

const List<Widget> navitems = [
  NavItem(title: 'Home'),
  NavItem(title: 'Feed'),
  NavItem(title: 'Explore'),
  NavItem(title: 'Inbox'),
  NavItem(title: 'Profile'),
];
