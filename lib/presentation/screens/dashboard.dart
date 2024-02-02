import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop/presentation/routes/app_router.gr.dart';
import 'package:shop/resources/resources.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  BottomNavigationBarItem _buildNavItem(
      String label, Image icon, bool isActive) {
    return BottomNavigationBarItem(
      icon: Column(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              isActive ? const Color.fromARGB(255, 103, 196, 167) : Colors.grey,
              BlendMode.srcIn,
            ),
            child: Image(
              image: icon.image,
              width: 28,
              height: 28,
              color: isActive
                  ? const Color.fromARGB(255, 103, 196, 167)
                  : Colors.grey.shade800,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: isActive
                  ? const Color.fromARGB(255, 103, 196, 167)
                  : Colors.grey.shade800,
            ),
          ),
        ],
      ),
      label: '',
    );
  }

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
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              // here we switch between tabs
              tabsRouter.setActiveIndex(index);
            },
            items: [
              _buildNavItem("Home", Image(image: AssetImage(Images.home)),
                  tabsRouter.activeIndex == 0),
              _buildNavItem("Favorites", Image(image: AssetImage(Images.heart)),
                  tabsRouter.activeIndex == 1),
              _buildNavItem("List", Image(image: AssetImage(Images.paper)),
                  tabsRouter.activeIndex == 2),
              _buildNavItem("Account", Image(image: AssetImage(Images.profile)),
                  tabsRouter.activeIndex == 3),
            ],
          ),
        );
      },
    );
  }
}
