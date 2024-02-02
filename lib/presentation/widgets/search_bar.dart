import 'package:flutter/material.dart';

class MainSearchBar extends StatelessWidget {
  final VoidCallback? onPressed;

  const MainSearchBar({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 350,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFF0F2F1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: IgnorePointer(
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Search here ...',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
