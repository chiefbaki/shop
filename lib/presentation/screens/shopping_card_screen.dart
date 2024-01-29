import 'package:flutter/material.dart';
import 'package:shop/core/consts/app_colors.dart';
import 'package:shop/core/consts/app_fonts.dart';
import 'package:shop/presentation/widgets/back_btn.dart';

class ShoppingCardScreen extends StatefulWidget {
  const ShoppingCardScreen({super.key});

  @override
  State<ShoppingCardScreen> createState() => _ShoppingCardScreenState();
}

class _ShoppingCardScreenState extends State<ShoppingCardScreen> {
  @override
  Widget build(BuildContext context) {
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
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_bag_outlined, color: AppColors.regularColor,))
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
