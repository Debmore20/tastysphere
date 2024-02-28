import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tastysphere/cubit/feeditem_cubit.dart';
import 'package:tastysphere/modeldb/recipe_model.dart';
import 'package:tastysphere/style/main_style.dart';

class FeedItemHome extends StatefulWidget {
  final Recipe recipe;
  final int index;
  const FeedItemHome({super.key, required this.recipe, required this.index});

  @override
  State<FeedItemHome> createState() => _FeedItemHomeState();
}

class _FeedItemHomeState extends State<FeedItemHome> {
  Color boxColor = AppStyle.colorOne;

  @override
  Widget build(BuildContext context) {
    final double itemHeight = MediaQuery.of(context).size.height * 0.12;
    return BlocBuilder<FeeditemCubit, int>(
      builder: (context, state) {
        if (state != widget.index) {
          boxColor = AppStyle.colorOne;
        }
        return Container(
          decoration: BoxDecoration(
              color: boxColor,
              border: const Border(
                  // top: BorderSide(color: AppStyle.textColorOne, width: 1),
                  top: BorderSide(color: AppStyle.colorOne, width: 0))),
          margin: const EdgeInsets.only(top: 0),
          padding: const EdgeInsets.all(20),
          height: itemHeight,
          width: double.maxFinite,
          child: ListTile(
            onTap: () {
              BlocProvider.of<FeeditemCubit>(context, listen: false)
                  .setCounterValue(widget.index);
              setState(() {
                boxColor = AppStyle.colorTwo;
              });
            },
            leading: const CircleAvatar(),
            title: Text(
              widget.recipe.mealName,
            ),
            trailing: Text('Taste Score: ' '${widget.recipe.steps.length}'),
            subtitle: Text(widget.recipe.author),
            selected: true,
          ),
        );
      },
    );
  }
}
