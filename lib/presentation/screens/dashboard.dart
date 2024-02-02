import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop/core/consts/app_colors.dart';
import 'package:shop/presentation/routes/app_router.gr.dart';
import 'package:shop/presentation/screens/product/product_screen.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
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
              currentIndex: currentIndex,
              onTap: (index) {
                if (index == 2) {
                  print(index);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductScreen(),
                    ),
                  );
                } else {
                  currentIndex = index;
                  setState(() {});
                  tabsRouter.setActiveIndex(index);
                }
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: AppColors.mediumGrey,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border,
                        color: AppColors.mediumGrey),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.list, color: AppColors.mediumGrey),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_box, color: AppColors.mediumGrey),
                    label: ""),
              ],
            ));
      },
    );
  }
}
