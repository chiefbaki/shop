import 'package:flutter/material.dart';
import 'package:shop/core/consts/app_colors.dart';

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
      width: 22.5,
      height: 22.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.mediumGrey)),
      child: Center(
        child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              size: 7,
            )),
      ),
    );
  }
}
