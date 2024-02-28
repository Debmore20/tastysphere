import 'package:flutter/material.dart';
import 'package:tastysphere/style/main_style.dart';
import 'package:tastysphere/widgets/app_drawer.dart';
import 'package:tastysphere/widgets/app_title.dart';
import 'package:tastysphere/widgets/home/body_home.dart';
import 'package:tastysphere/widgets/nav_item.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key, required this.title});

  final String title;

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    // Get screen width
    final screenWidth = MediaQuery.of(context).size.width;
    final mobile = screenWidth > 856 ? true : false;

    return Scaffold(
      backgroundColor: AppStyle.colorOne,
      drawer: mobile ? null : const AppDrawer(),
      appBar: AppBar(
          surfaceTintColor: AppStyle.colorOne,
          clipBehavior: Clip.hardEdge,
          actions: mobile ? navitems : null,
          toolbarHeight: AppStyle.appbarHeight,
          backgroundColor: AppStyle.colorOne,
          centerTitle: true,
          title: AppTitle(title: widget.title)),
      body: mobile ? const HomeBodyDesktop() : const HomeBodyMobile(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.favorite),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
