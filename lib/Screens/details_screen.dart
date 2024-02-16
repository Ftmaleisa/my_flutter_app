import 'package:flutter/material.dart';
import 'package:my_flutter_app/model/Tree.dart';
import '../widgets/tree_details.dart';

class TreesDetailsScreen extends StatelessWidget {
  final Tree tree;
  const TreesDetailsScreen({super.key, required this.tree});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tree.name),
        backgroundColor: Colors.green[800],
      ),
      body: TreeDetailsWidget(
        tree: tree,
      ),
    );
  }
}
