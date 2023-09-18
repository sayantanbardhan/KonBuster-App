import 'package:flutter/material.dart';
import 'package:sih/config/app_images.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key, this.size = 40});
  final double size;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(45)),
      child: Image.asset(
        AppImages.picUser1,
        width: size,
        height: size,
      ),
    );
  }
}
