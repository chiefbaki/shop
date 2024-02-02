import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/core/consts/app_colors.dart';
import 'package:shop/core/consts/app_fonts.dart';
import 'package:shop/data/model/model.dart';
import 'package:shop/presentation/widgets/back_btn.dart';
import 'package:shop/presentation/widgets/product_cards.dart';
import 'package:shop/provider/shopping_card_provider.dart';

class ShoppingCardScreen extends StatefulWidget {
  const ShoppingCardScreen({super.key});

  @override
  State<ShoppingCardScreen> createState() => _ShoppingCardScreenState();
}

bool isSelected = false;

class _ShoppingCardScreenState extends State<ShoppingCardScreen> {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<ShoppingCardProvider>(context);
    final ShoppingCardList items = ShoppingCardList();
    return Scaffold(
      appBar: AppBar(
        leading: BackBtn(
          onPressed: () {},
        ),
        centerTitle: false,
        title: Text(
          "Your Cart",
          style: AppFonts.s16w500.copyWith(color: AppColors.regularColor),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    color: AppColors.regularColor,
                  )),
              Positioned(
                  top: 10,
                  left: 20,
                  child: CircleAvatar(
                    backgroundColor: AppColors.lengthColor,
                    radius: 6,
                    child: Text(
                      vm.listOfModel.length.toString(),
                      style: AppFonts.s7w700,
                    ),
                  ))
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery to",
                  style: AppFonts.s12w500.copyWith(color: AppColors.lightGrey),
                ),
                Text(
                  "Salatiga City, Central Java",
                  style: AppFonts.s12w500.copyWith(color: AppColors.lightGrey),
                )
              ],
            ),
            const Divider(
              height: 10,
            ),
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.65,
              child: ListView.separated(
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: items.models.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    ProductCard(
                      img: items.models[index].img,
                      model: items.models[index].model,
                      price: items.models[index].price,
                      quantity: items.models[index].quantity,
                      variant: items.models[index].variant,
                      id: items.models[index].id,
                    ),
                  ],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 24,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              decoration: const BoxDecoration(color: AppColors.mediumGrey),
            ),
            const SizedBox(
              height: 14,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: AppFonts.s14w400
                          .copyWith(color: AppColors.regularColor),
                    ),
                    Text(
                      "\$ 00,0",
                      style: AppFonts.s14w400
                          .copyWith(color: AppColors.regularColor),
                    )
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(349, 45),
                        backgroundColor: AppColors.activeBtnColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        )),
                    child: Expanded(
                      child: Text(
                        "Continue for payments",
                        style: AppFonts.s14w500
                            .copyWith(color: AppColors.regularColor),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
