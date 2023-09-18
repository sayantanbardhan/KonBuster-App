import 'package:flutter/material.dart';
import 'package:sih/config/app_images.dart';
import 'package:sih/styles/app_texts.dart';

class PostItems extends StatelessWidget {
  final String user;
  final Icon iconType;
  const PostItems({super.key, required this.user, required this.iconType});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                AppImages.picUser1,
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              ),
              SizedBox(
                width: 16,
              ),
              IconButton(
                onPressed: () {},
                icon: iconType,
                iconSize: 20,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Here the details of the insta page searched will be kept",
          )
        ],
      ),
    );
  }
}
