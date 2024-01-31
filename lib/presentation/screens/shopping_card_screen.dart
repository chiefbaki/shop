import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/core/consts/app_colors.dart';
import 'package:shop/core/consts/app_fonts.dart';
import 'package:shop/data/model/model.dart';
import 'package:shop/presentation/widgets/back_btn.dart';
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
              height: MediaQuery.of(context).size.height * 0.63,
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
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.activeBtnColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        )),
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

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
    required this.img,
    required this.variant,
    required this.model,
    required this.price,
    required this.quantity,
    required this.id
  });

  final String img;
  final String variant;
  final String model;
  final double price;
  final int quantity;
  final int id;

  @override
  State<ProductCard> createState() => _ProductCardState();
}
  
class _ProductCardState extends State<ProductCard> {
  
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<ShoppingCardProvider>(context);
    ShoppingCardModel model = ShoppingCardModel(id: widget.id, quantity: widget.quantity, img: widget.img, model: widget.model, variant: widget.variant, price: widget.price);
    return Row(
      children: [
        Checkbox(
            side: const BorderSide(color: Color(0xFFF0F2F1)),
            activeColor: AppColors.activeBtnColor,
            value: isSelected,
            onChanged: (value) {
              isSelected = !isSelected;
              setState(() {});
            }),
        const SizedBox(
          width: 9,
        ),
        Image.asset(
          widget.img,
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
              widget.model,
              style: AppFonts.s14w500.copyWith(color: AppColors.regularColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                "Variant: ${widget.variant}",
                style: AppFonts.s12w400.copyWith(color: AppColors.lightGrey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Text(
                    "\$ ${widget.price.toString()}",
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
                          widget.quantity.toString(),
                          style: AppFonts.s14w400
                              .copyWith(color: AppColors.regularColor),
                        ),
                      ),
                      CustomBtn(icon: Icons.add, onPressed: () {
                        vm.addCard(model);
                      }),
                      const SizedBox(
                        width: 6,
                      ),
                      CustomBtn(
                          icon: Icons.delete_forever_outlined, onPressed: () {
                            vm.removeCard(model);
                          })
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
            
          },
          icon: Icon(
            icon,
            size: 11,
          )),
    );
  }
}
