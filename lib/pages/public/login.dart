import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 350,
          height: 550,
          decoration: const BoxDecoration(
              color: Color(0xFFbde0fe),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Card(
                    color: Colors.white,
                    child: SizedBox(
                      width: 300,
                      height: 200,
                      child: Image.network(
                          'https://kbu.ac.kr/resources/_Img/Common/logo.png',
                          scale: 1.5),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(
                          width: 300,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '로그인 페이지',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const DefaultInputWidget(
                          hintStr: '아이디',
                        ),
                        const DefaultInputWidget(
                          hintStr: '비밀번호',
                        ),
                        SizedBox(
                          width: 300,
                          height: 50,
                          child: OutlinedButton(
                            onPressed: null,
                            style: OutlinedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              backgroundColor: const Color(0xFF4caf50),
                            ),
                            child: const Text(
                              '로그인',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          child: Row(
                            children: [
                              const Text('계정이 없으신가요? '),
                              GestureDetector(
                                onTap: () => print('clicked!'),
                                child: const Text('회원가입'),
                              )
                            ],
                          ),
                        )
                      ],
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

class DefaultInputWidget extends StatelessWidget {
  final hintStr;
  const DefaultInputWidget({super.key, required this.hintStr});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 40,
      child: TextField(
        decoration: InputDecoration(
            hintText: hintStr,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)))),
      ),
    );
  }
}
