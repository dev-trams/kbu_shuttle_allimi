import 'package:flutter/material.dart';
import 'package:shuttle_allimi/pages/admin/home.dart';
import 'package:shuttle_allimi/pages/user/home.dart';
import 'package:shuttle_allimi/pages/public/login.dart';

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
        // /admin - 관리자가 보는 섹션
        "/admin": (context) => const AdminHomePage(),
      },
    );
  }
}
