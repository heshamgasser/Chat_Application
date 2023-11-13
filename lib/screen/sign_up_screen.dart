import 'package:chat_app/layout/home_layout.dart';
import 'package:chat_app/screen/sign_in_screen.dart';
import 'package:chat_app/screen/widget/custom_textFormField.dart';
import 'package:chat_app/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = 'Sign Up Screen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool securePassword = true;

  GlobalKey<FormState> formKey = GlobalKey();

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
        body: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        controller: firstNameController,
                        email: false,
                        password: false,
                        labelText: 'First Name',
                        suffixIcon:
                            Icon(Icons.person, color: AppColor.lightBlue),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: CustomTextFormField(
                        labelText: 'Last Name',
                        controller: lastNameController,
                        email: false,
                        password: false,
                        suffixIcon:
                            Icon(Icons.person, color: AppColor.lightBlue),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                CustomTextFormField(
                  controller: emailController,
                  email: true,
                  password: false,
                  labelText: 'Email',
                  suffixIcon:
                      Icon(Icons.email, color: AppColor.lightBlue),
                ),
                SizedBox(height: 15.h),
                CustomTextFormField(
                  labelText: 'Password',
                  controller: passwordController,
                  email: false,
                  password: securePassword,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        securePassword = !securePassword;
                      });
                    },
                    icon: Icon(
                      securePassword ? Icons.visibility : Icons.visibility_off,
                      color: AppColor.lightBlue,
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                IgnorePointer(
                  ignoring: (firstNameController.text.isEmpty &&
                          lastNameController.text.isEmpty &&
                          emailController.text.isEmpty &&
                          passwordController.text.isEmpty)
                      ? true
                      : false,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: (firstNameController.text.isEmpty &&
                                lastNameController.text.isEmpty &&
                                emailController.text.isEmpty &&
                                passwordController.text.isEmpty)
                            ? Colors.white
                            : AppColor.lightBlue),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, HomeLayout.routeName);
                      }
                    },
                    child: Row(
                      children: [
                        Text(
                          'Create Account',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  color: (firstNameController.text.isEmpty &&
                                          lastNameController.text.isEmpty &&
                                          emailController.text.isEmpty &&
                                          passwordController.text.isEmpty)
                                      ? Color(0xFFBDBDBD)
                                      : Colors.white),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_outlined,
                          color: (firstNameController.text.isEmpty &&
                                  lastNameController.text.isEmpty &&
                                  emailController.text.isEmpty &&
                                  passwordController.text.isEmpty)
                              ? Color(0xFFBDBDBD)
                              : Colors.white,
                          size: 30.r,
                        )
                      ],
                    ),
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
                          Navigator.pushReplacementNamed(
                              context, SignInScreen.routeName);
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
      ),
    );
  }
}
