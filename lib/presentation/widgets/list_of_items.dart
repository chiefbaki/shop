import 'package:flutter/material.dart';

class ListOfItems extends StatefulWidget {
  const ListOfItems({super.key});

  @override
  State<ListOfItems> createState() => _ListOfItemsState();
}

class _ListOfItemsState extends State<ListOfItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.amber,
            )
          ],
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 13.0,
        ),
      ),
    );
  }
}
