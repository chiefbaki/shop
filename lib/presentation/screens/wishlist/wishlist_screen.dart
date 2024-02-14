import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/core/consts/app_colors.dart';
import 'package:shop/core/consts/app_fonts.dart';
import 'package:shop/presentation/screens/product/product_screen.dart';
import 'package:shop/presentation/widgets/back_btn.dart';
import 'package:shop/presentation/widgets/cart_icon_btn.dart';
import 'package:shop/provider/favorite_list_provider.dart';
import 'package:shop/provider/shopping_card_provider.dart';

@RoutePage()
class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<ShoppingCardProvider>(context);
    final favorite_provider = FavoriteProvider.of(context);
    final finalList = favorite_provider.favorites;

    return Scaffold(
      appBar: AppBar(
        leading: BackBtn(
          onPressed: () {
            context.router.pop();
          },
        ),
        centerTitle: false,
        title: Text(
          "Your Wishlist",
          style: AppFonts.s16w500.copyWith(color: AppColors.regularColor),
        ),
        actions: [CardIcon(vm: vm)],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: finalList.length,
                  itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductScreen(
                                          model: finalList[index],
                                        )));
                          },
                          child: ListTile(
                            title: Text(
                              overflow: TextOverflow.ellipsis,
                              finalList[index].name,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              finalList[index].description,
                              overflow: TextOverflow.ellipsis,
                            ),
                            leading: Image(
                              image: AssetImage(finalList[index].images[0]),
                            ),
                            trailing: Text(
                              '\$${finalList[index].price}',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            tileColor: Color.fromARGB(255, 230, 230, 230),
                          ),
                        ),
                      )))
        ],
      ),
    );
  }
}
