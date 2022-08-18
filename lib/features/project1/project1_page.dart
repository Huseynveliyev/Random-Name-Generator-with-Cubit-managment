import 'package:bloc_apps_with_metmet_canacik/features/project1/CounterCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Project1_Page extends StatelessWidget {
  const Project1_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: const Project1View(),
    );
  }
}

class Project1View extends StatelessWidget {
  const Project1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: BlocBuilder<CounterCubit, int>(builder: (context, appState) {
        return Center(
          child: Text(
            appState.toString(),
            style: Theme.of(context).textTheme.headline5,
          ),
        );
      }),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            child: Text("Increment"),
            onPressed: () {
              context.read<CounterCubit>().increment();
            },
          ),
          ElevatedButton(
            child: Text("Decrement"),
            onPressed: () {
              context.read<CounterCubit>().decrement();
            },
          ),
        ],
      ),
    );
  }
}
