import 'package:flutter/material.dart';
import 'package:shuttle_allimi/pages/admin/home.dart';
import 'package:shuttle_allimi/pages/admin/login.dart';
import 'package:shuttle_allimi/pages/user/home.dart';
import 'package:shuttle_allimi/pages/public/login.dart';
import 'package:shuttle_allimi/pages/user/signup.dart';

void main() {
  runApp(const app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        // /user - 일반 사용자가 보는 섹션
        "/user": (context) => const UserHomePage(),
        "/user/signup": (context) => const UserSignUpPage(),
        // /admin - 관리자가 보는 섹션
        "/admin/login": (context) => const AdminLoginPage(),
        "/admin": (context) => const AdminHomePage()
      },
    );
  }
}
