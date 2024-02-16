import 'package:flutter/material.dart';
import 'package:my_flutter_app/Screens/details_screen.dart';
import 'package:my_flutter_app/model/Tree.dart';

// this widget shows a card that shos the image and name of the trees
class treecard extends StatelessWidget {
  final Tree tree;

  const treecard({super.key, required this.tree});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return TreesDetailsScreen(tree: tree);
        }));
      },
      child: Card(
          clipBehavior: Clip.hardEdge,
          child: Column(
            children: [
              Expanded(
                child: Image.network(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    tree.imageLink),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  tree.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              )
            ],
          )),
    );
  }
}
