import 'package:flutter/material.dart';
import 'package:sih/components/toolbar.dart';
import 'package:sih/components/user_avatar.dart';
import 'package:sih/config/app_routes.dart';
import 'package:sih/config/app_strings.dart';
import 'package:sih/styles/app_texts.dart';

enum ProfileMenu {
  edit,
  logout,
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.profile,
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed(AppRoutes.editProfile);
                  break;
                case ProfileMenu.logout:
                  Navigator.of(context).pushReplacementNamed(AppRoutes.users);
                  break;
              }
            },
            icon: const Icon(Icons.more_vert_outlined),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(Icons.edit),
                      SizedBox(
                        width: 12,
                      ),
                      Text(AppStrings.edit),
                    ],
                  ),
                  value: ProfileMenu.edit,
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(Icons.logout),
                      SizedBox(
                        width: 12,
                      ),
                      Text(AppStrings.logout),
                    ],
                  ),
                  value: ProfileMenu.logout,
                ),
              ];
            },
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          UserAvatar(
            size: 90,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "Aloha Cosmica",
            style: AppText.header2,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Planet #4592 ~ Gleozin",
            style: AppText.subtitle3,
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "6",
                    style: AppText.header2,
                  ),
                  Text(AppStrings.flags),
                ],
              ),
              Column(
                children: [
                  Text(
                    "146",
                    style: AppText.header2,
                  ),
                  Text(AppStrings.searches),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
          Text(
            "+919876543210",
            style: AppText.subtitle1,
          ),
          Text(AppStrings.phoneNumber),
        ],
      ),
    );
  }
}
