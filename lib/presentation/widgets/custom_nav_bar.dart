import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              icon: const Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/wishlist');
              },
              icon: const Icon(Icons.favorite),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/history');
              },
              icon: const Icon(Icons.list_alt_outlined),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/profile');
              },
              icon: const Icon(Icons.account_circle_sharp),
            ),
          ],
        ),
      ),
    );
  }
}
