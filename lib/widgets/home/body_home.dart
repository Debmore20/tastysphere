import 'package:flutter/material.dart';
import 'package:tastysphere/widgets/home/homepage_feed.dart';

class HomeBodyDesktop extends StatelessWidget {
  const HomeBodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: const HomepageFeed()),
        ),
        Expanded(
          child: SizedBox(
              child: Container(
            decoration: const BoxDecoration(color: Colors.white),
          )),
        )
      ],
    );
  }
}

class HomeBodyMobile extends StatelessWidget {
  const HomeBodyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Expanded(
          child:
              SizedBox(height: screenheight - 100, child: const HomepageFeed()),
        ),
      ],
    );
  }
}
