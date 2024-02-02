// import 'package:flutter/material.dart';

// class CustomNavBar extends StatelessWidget {
//   const CustomNavBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       color: Colors.white,
//       child: SizedBox(
//         height: 70,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             IconButton(
//               onPressed: () {
//                 Navigator.pushReplacementNamed(context, '/home');
//               },
//               icon: const Icon(Icons.home),
//             ),
//             IconButton(
//               onPressed: () {
//                 Navigator.pushReplacementNamed(context, '/wishlist');
//               },
//               icon: const Icon(Icons.favorite),
//             ),
//             IconButton(
//               onPressed: () {
//                 Navigator.pushReplacementNamed(context, '/history');
//               },
//               icon: const Icon(Icons.list_alt_outlined),
//             ),
//             IconButton(
//               onPressed: () {
//                 Navigator.pushReplacementNamed(context, '/profile');
//               },
//               icon: const Icon(Icons.account_circle_sharp),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop/presentation/routes/app_router.gr.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        // CardRoute(),
        CatalogRoute(),
        ProductRoute(),
        ProfileRoute()
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) {
                // here we switch between tabs
                tabsRouter.setActiveIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_box), label: ""),
              ],
            ));
      },
    );
  }
}
