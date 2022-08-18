import 'package:bloc/bloc.dart';
import 'package:bloc_apps_with_metmet_canacik/features/project2/randomNames_Cubit.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math show Random;

import 'package:flutter_bloc/flutter_bloc.dart';

class Project2_Page extends StatelessWidget {
  const Project2_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<randomNamesCubit>(
      create: (context) => randomNamesCubit(userList: _userList),
      child: Project_2View(),
    );
  }
}

class Project_2View extends StatelessWidget {
  const Project_2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Names Cubit Page"),
      ),
      body: BlocBuilder<randomNamesCubit, String?>(
          builder: (context, String? nameState) {
        final elevatedButton = ElevatedButton(
          child: Text("Fetch User"),
          onPressed: () {
            context.read<randomNamesCubit>().getRandomName();
          },
        );
        if (nameState != null) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  nameState,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: 25),
                elevatedButton
              ],
            ),
          );
        } else {
          return Center(
            child: elevatedButton,
          );
        }
      }),
    );
  }
}

//iterablelist cagrildigi anda hafizada yer tutmaya baslar
const Iterable<String> _userList = <String>[
  "Huseyn",
  "Hesen",
  "Nurlan",
  "Vaqif",
  "Murad",
  "Azer",
  "Etibar"
];
