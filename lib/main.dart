import 'package:flutter/material.dart';
import 'package:my_flutter_app/Screens/tree_home_screen.dart';
import 'package:my_flutter_app/data/all_trees.dart';
import 'package:my_flutter_app/model/Tree.dart';

final Trees =
    allTrees.map<Tree>((jsonTree) => Tree.fromJson(jsonTree)).toList();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: treesHomeScreen(),
    );
  }
}
