import 'package:auto_route/auto_route.dart';


import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: DashboardRoute.page, initial: true, children: [
          AutoRoute(page: HomeRoute.page, initial: true),
          AutoRoute(page: CatalogRoute.page,),
          AutoRoute(page: ProfileRoute.page,),
          AutoRoute(page: ProductRoute.page,),
        ]),
        AutoRoute(page: ShoppingCardRoute.page,)
      ];
}

