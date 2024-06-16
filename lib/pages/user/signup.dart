import 'package:flutter/material.dart';
import 'package:shuttle_allimi/utils/component/default_input_in_label.dart';

class UserSignUpPage extends StatelessWidget {
  const UserSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    const cardViewDefaultWidget = 350.0;

    return Scaffold(
        body: Center(
      child: Container(
        width: cardViewDefaultWidget,
        height: 550,
        decoration: const BoxDecoration(
          color: Color(0xFF6495ec),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const SizedBox(
                width: cardViewDefaultWidget,
                child: Text(
                  'S.M.SYSTEM\n회원가입',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.end,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: cardViewDefaultWidget,
                height: 360,
                child: Card(
                    surfaceTintColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const DefaultInputWidget(
                            outlineStyle: false,
                            hintStr: '학과',
                          ),
                          const DefaultInputWidget(
                            outlineStyle: false,
                            hintStr: '이름',
                          ),
                          const DefaultInputWidget(
                            outlineStyle: false,
                            hintStr: '비밀번호',
                          ),
                          SizedBox(
                            width: cardViewDefaultWidget,
                            child: DropdownButtonFormField(
                              items: const [
                                DropdownMenuItem(
                                  value: 1,
                                  child: Text('남자'),
                                ),
                                DropdownMenuItem(
                                  value: 2,
                                  child: Text('여자'),
                                )
                              ],
                              onChanged: (change) => print('object $change'),
                              value: 1,
                            ),
                          ),
                          const DefaultInputWidget(
                            outlineStyle: false,
                            hintStr: '학번',
                          ),
                        ],
                      ),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: 150,
                height: 50,
                child: OutlinedButton(
                    onPressed: () => print('clicked'),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text(
                      '회원가입',
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
