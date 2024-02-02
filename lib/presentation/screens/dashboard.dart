import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop/core/consts/app_colors.dart';
import 'package:shop/core/consts/app_fonts.dart';
import 'package:shop/presentation/routes/app_router.gr.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int selectedIndex = 0;
  int index = 0;
  @override
  Widget build(BuildContext context) {
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
              currentIndex: selectedIndex,
              
              selectedIconTheme:const IconThemeData(color: AppColors.activeBtnColor),
              unselectedLabelStyle:  AppFonts.s10w400.copyWith(color: AppColors.mediumGrey),
              selectedLabelStyle:
                  AppFonts.s10w400.copyWith(color: AppColors.activeBtnColor),
              onTap: (value) {
                selectedIndex = value;
                index = value;
                setState(() {});
                tabsRouter.setActiveIndex(index);
                print("index: $index");
                print("selcted index: $selectedIndex");
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: selectedIndex == index ? AppColors.activeBtnColor : AppColors.mediumGrey),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.favorite_border,
                      color: AppColors.mediumGrey,
                    ),
                    label: "Wishlist"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.list, color: AppColors.mediumGrey),
                    label: "History"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_box, color: AppColors.mediumGrey),
                    label: "Account"),
              ],
            ));
      },
    );
  }
}
