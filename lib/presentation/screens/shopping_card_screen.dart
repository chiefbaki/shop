import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/core/consts/app_colors.dart';
import 'package:shop/core/consts/app_fonts.dart';
import 'package:shop/presentation/widgets/back_btn.dart';
import 'package:shop/provider/shopping_card_provider.dart';
import 'package:shop/resources/resources.dart';

class ShoppingCardScreen extends StatefulWidget {
  const ShoppingCardScreen({super.key});

  @override
  State<ShoppingCardScreen> createState() => _ShoppingCardScreenState();
}

class _ShoppingCardScreenState extends State<ShoppingCardScreen> {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<ShoppingCardProvider>(context);
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
            SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.63,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            side: const BorderSide(color: Color(0xFFF0F2F1)),
                            activeColor: AppColors.activeBtnColor,
                            value: true,
                            onChanged: (value) {}),
                        const SizedBox(
                          width: 9,
                        ),
                        const ProductCard(),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            side: const BorderSide(color: Color(0xFFF0F2F1)),
                            activeColor: AppColors.activeBtnColor,
                            value: true,
                            onChanged: (value) {}),
                        const SizedBox(
                          width: 9,
                        ),
                        const ProductCard(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              decoration: const BoxDecoration(color: AppColors.mediumGrey),
            ),
            Text(
              "Egronomics",
              style: AppFonts.s14w400.copyWith(color: AppColors.regularColor),
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.activeBtnColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 100),
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

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Images.rectangle25,
          width: 82,
          height: 72,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Air pods max by Apple",
              style: AppFonts.s14w500.copyWith(color: AppColors.regularColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                "Variant: Grey",
                style: AppFonts.s12w400.copyWith(color: AppColors.lightGrey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Text(
                    "\$ 199,99",
                    style: AppFonts.s14w500
                        .copyWith(color: AppColors.regularColor),
                  ),
                  const SizedBox(
                    width: 65,
                  ),
                  Row(
                    children: [
                      CustomBtn(
                        icon: Icons.remove,
                        onPressed: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "1",
                          style: AppFonts.s14w400
                              .copyWith(color: AppColors.regularColor),
                        ),
                      ),
                      CustomBtn(icon: Icons.add, onPressed: () {}),
                      const SizedBox(
                        width: 6,
                      ),
                      CustomBtn(
                          icon: Icons.delete_forever_outlined, onPressed: () {})
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

class CustomBtn extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;
  const CustomBtn({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 26.5,
      height: 26.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.mediumGrey)),
      child: IconButton(
          onPressed: () {
            print("work");
          },
          icon: Icon(
            icon,
            size: 11,
          )),
    );
  }
}
