import 'package:flutter/material.dart';
import 'package:sih/components/app_text_field.dart';
import 'package:sih/components/toolbar.dart';
import 'package:sih/config/app_strings.dart';
import 'package:sih/styles/app_colors.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.search,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SizedBox(
          child: Column(
            children: [
              Spacer(),
              AppTextField(hint: "Search Id"),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    print("Google clicked");
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: AppColors.black,
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppStrings.search),
                    ],
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
