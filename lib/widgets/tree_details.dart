import 'package:flutter/material.dart';
import 'package:my_flutter_app/model/Tree.dart';

// this widget should receive a tree and show all tree details
class TreeDetailsWidget extends StatefulWidget {
  final Tree tree;
  const TreeDetailsWidget({super.key, required this.tree});

  @override
  State<TreeDetailsWidget> createState() => _TreeDetailsWidgetState();
}

class _TreeDetailsWidgetState extends State<TreeDetailsWidget> {
  bool isNameColord = false;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      // image
      Image.network(widget.tree.imageLink),

      // name
      Text(
        widget.tree.name,
        style: TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.bold,
            color: isNameColord ? Colors.green : Colors.black),
      ),
      //info
      Text('Price: ${widget.tree.price}'),
      Text('Irrigation: ${widget.tree.irrigation}'),
      Text('Lighting: ${widget.tree.lighting}'),
      Text('Temperature: ${widget.tree.temperature}'),
      ElevatedButton(
          onPressed: () {
            setState(() {
              isNameColord = !isNameColord;
            });
          },
          child: Text('Change Name Color'))
    ]);
  }
}
