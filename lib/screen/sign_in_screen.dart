import 'package:chat_app/layout/home_layout.dart';
import 'package:chat_app/screen/sign_up_screen.dart';
import 'package:chat_app/screen/widget/custom_textFormField.dart';
import 'package:chat_app/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatefulWidget {
  static const String routeName = 'Sign In Screen';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  bool securePassword = true;

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
          automaticallyImplyLeading: false,
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
        body: Form(
          key: formKey,
          child: Padding(
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
                    controller: emailController,
                    email: true,
                    password: false,
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
                    onPressed: () {
                      if (formKey.currentState!.validate()){
                        Navigator.pushNamed(context, HomeLayout.routeName);
                      }
                    },
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
                    onPressed: () {
                      Navigator.pushNamed(context, SignUpScreen.routeName);
                    },
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
      ),
    );
  }
}
