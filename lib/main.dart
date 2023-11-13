import 'package:chat_app/layout/home_layout.dart';
import 'package:chat_app/screen/sign_in_screen.dart';
import 'package:chat_app/style/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main (){
  runApp(const ChatApplication());
}

class ChatApplication extends StatelessWidget {
  const ChatApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          initialRoute: SignInScreen.routeName,
          routes: {
            HomeLayout.routeName:(context) => const HomeLayout(),
            SignInScreen.routeName: (context) => SignInScreen(),
          },
        );
      },

    );
  }
}
