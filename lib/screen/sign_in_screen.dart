import 'package:chat_app/screen/widget/custom_textFormField.dart';
import 'package:chat_app/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatelessWidget {
  static const String routeName = 'Sign In Screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/image/background.png'), fit: BoxFit.fill),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            'Login',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.language),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(height: 15.h),
                CustomTextFormField(
                  labelText: 'Email',
                  suffixIcon:
                      Icon(Icons.check_circle, color: AppColor.lightBlue),
                ),
                SizedBox(height: 15.h),
                CustomTextFormField(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: AppColor.lightBlue,
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
                SizedBox(height: 15.h),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'Login',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_outlined,
                        size: 30.r,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Or Create My Account',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
