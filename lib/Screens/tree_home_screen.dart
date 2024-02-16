import 'package:flutter/material.dart';
import 'package:my_flutter_app/main.dart';
import 'package:my_flutter_app/widgets/tree_card.dart';

class treesHomeScreen extends StatelessWidget {
  const treesHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Trees'),
          backgroundColor: Colors.green[800],
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ))
          ],
        ),
        body: GridView.builder(
          padding: EdgeInsets.all(8),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: Trees.length,
          itemBuilder: (context, index) {
            final Tree = Trees[index];
            return treecard(tree: Tree);
          },
        ));
  }
}
