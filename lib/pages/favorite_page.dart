import 'package:flutter/material.dart';
import 'package:sih/components/post_items.dart';
import 'package:sih/components/toolbar.dart';
import 'package:sih/config/app_strings.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.liked,
        actions: [
          PopupMenuButton(
            onSelected: (value) {},
            icon: const Icon(Icons.sort),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Text(AppStrings.sortTime),
                    ],
                  ),
                  //value: use enum,
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Text(AppStrings.sortName),
                    ],
                  ),
                  //value: use enum,
                ),
              ];
            },
          )
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItems(
            user: users[index],
            iconType: Icon(Icons.thumb_down),
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 24,
          );
        },
      ),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i <= 3; i++) {
      users.add("Account name searched");
    }
  }
}
