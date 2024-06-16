import 'package:flutter/material.dart';
import 'package:shuttle_allimi/utils/component/input_to_label.dart';

class AdminLoginPage extends StatelessWidget {
  const AdminLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    const cardViewDefaultWidget = 350.0;

    return Scaffold(
      body: Center(
        child: Container(
          width: cardViewDefaultWidget,
          height: 500,
          decoration: const BoxDecoration(
            color: Color(0x00000000),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Card(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Image.network(
                      'https://kbu-sm.web.app/assets/images/kbu_software.png'),
                ),
                const Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      SizedBox(
                        child: Text(
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                            'KBU 셔틀 관리 페이지'),
                      ),
                      SizedBox(
                        child: Text('관리자 정보를 입력해주세요.'),
                      ),
                      Divider()
                    ],
                  ),
                ),
                const Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InputToLabel(
                          label: '아이디',
                        ),
                        InputToLabel(
                          label: '비밀번호',
                          passwordType: true,
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(),
                Flexible(
                  child: Center(
                    child: SizedBox(
                      width: 250,
                      height: 40,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                          backgroundColor: const Color(0xFF012b54),
                        ),
                        onPressed: () => Navigator.pushNamed(context, '/admin'),
                        child: const Text(
                            style: TextStyle(color: Colors.white), '로그인'),
                      ),
                    ),
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
