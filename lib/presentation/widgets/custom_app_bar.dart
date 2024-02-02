import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop/presentation/routes/app_router.gr.dart';



class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Delivery address',
                  style: TextStyle(
                    color: Color(0xFFC7C7CA),
                    fontSize: 10,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    //DropdownMenu
                  },
                  child: const Row(
                    children: [
                      Text(
                        'Salatiga City, Central Java',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () {
                  
                  context.router.push(const ShoppingCardRoute());
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {
                    // Действие при нажатии на иконку уведомлений
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
