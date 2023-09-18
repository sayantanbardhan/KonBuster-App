import 'package:flutter/material.dart';
import 'package:sih/components/app_text_field.dart';
import 'package:sih/components/toolbar.dart';
import 'package:sih/components/user_avatar.dart';
import 'package:sih/config/app_strings.dart';
import 'package:sih/styles/app_colors.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.signup,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: UserAvatar(
                        size: 120,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        child: Icon(
                          Icons.edit,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                AppTextField(hint: AppStrings.firstName),
                SizedBox(
                  height: 16,
                ),
                AppTextField(hint: AppStrings.lastName),
                SizedBox(
                  height: 16,
                ),
                AppTextField(hint: AppStrings.phoneNumber),
                SizedBox(
                  height: 16,
                ),
                AppTextField(hint: AppStrings.location),
                SizedBox(
                  height: 16,
                ),
                AppTextField(hint: AppStrings.about),
                SizedBox(
                  height: 16,
                ),
                AppTextField(hint: AppStrings.email),
                SizedBox(
                  height: 16,
                ),
                AppTextField(hint: AppStrings.password),
                SizedBox(
                  height: 16,
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
                        Text(AppStrings.submit),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
