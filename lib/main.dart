import 'package:flutter/material.dart';
import 'package:tastysphere/cubit/feeditem_cubit.dart';
import 'package:tastysphere/presentation/home/homepage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: BlocProvider<FeeditemCubit>(
        create: (_) => FeeditemCubit(),
        child: const Homepage(title: 'TASTY SPHERE'),
      ),
    );
  }
}
