import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/core/consts/app_colors.dart';
import 'package:shop/core/consts/app_fonts.dart';
import 'package:shop/data/model/model.dart';
import 'package:shop/presentation/screens/shopping_card_screen.dart';
import 'package:shop/presentation/widgets/custom_btn.dart';
import 'package:shop/provider/shopping_card_provider.dart';

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
