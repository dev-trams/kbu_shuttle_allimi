import 'package:flutter/material.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaWidht = MediaQuery.of(context).size.width;
    final mediaHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox(
        width: mediaWidht,
        height: mediaHeight,
        child: Row(
          children: [
            Flexible(
                flex: 1,
                child: SizedBox(
                  width: mediaWidht,
                  height: mediaHeight,
                  child: const Column(
                    children: [
                      OutlinedButton(
                        onPressed: null,
                        child: Text('data'),
                      ),
                      OutlinedButton(
                        onPressed: null,
                        child: Text('data'),
                      ),
                      OutlinedButton(
                        onPressed: null,
                        child: Text('data'),
                      ),
                      OutlinedButton(
                        onPressed: null,
                        child: Text('data'),
                      ),
                    ],
                  ),
                )),
            Flexible(
                flex: 4,
                child: SizedBox(
                  width: mediaWidht,
                  height: mediaHeight,
                )),
            Flexible(
                flex: 2,
                child: SizedBox(
                  width: mediaWidht,
                  height: mediaHeight,
                )),
          ],
        ),
      ),
    );
  }
}
