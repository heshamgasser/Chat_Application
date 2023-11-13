import 'package:chat_app/screen/sign_in_screen.dart';
import 'package:chat_app/screen/widget/custom_textFormField.dart';
import 'package:chat_app/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = 'Sign Up Screen';

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
            'Create Account',
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      labelText: 'First Name',
                      suffixIcon:
                          Icon(Icons.check_circle, color: AppColor.lightBlue),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: CustomTextFormField(
                      labelText: 'Last Name',
                      suffixIcon:
                          Icon(Icons.check_circle, color: AppColor.lightBlue),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              CustomTextFormField(
                labelText: 'Email',
                suffixIcon: Icon(Icons.check_circle, color: AppColor.lightBlue),
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
              SizedBox(height: 40.h),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'Create Account',
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
              Row(
                children: [
                  Text(
                    'Already Have an Account? ',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, SignInScreen.routeName);
                      },
                      child: Text('Login',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(fontWeight: FontWeight.bold))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
