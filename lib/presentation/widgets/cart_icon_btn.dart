import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop/core/consts/app_colors.dart';
import 'package:shop/core/consts/app_fonts.dart';
import 'package:shop/presentation/routes/app_router.gr.dart';
import 'package:shop/provider/shopping_card_provider.dart';

class CardIcon extends StatelessWidget {
  const CardIcon({
    super.key,
    required this.vm,
  });

  final ShoppingCardProvider vm;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () {
              context.router.push(const ShoppingCardRoute());
            },
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
    );
  }
}

