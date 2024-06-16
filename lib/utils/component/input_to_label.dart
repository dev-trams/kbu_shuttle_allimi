import 'package:flutter/material.dart';

class InputToLabel extends StatelessWidget {
  const InputToLabel({
    super.key,
    required this.label,
    this.passwordType,
  });
  final String label;
  final bool? passwordType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              width: 100,
              height: 40,
              decoration: const BoxDecoration(
                  border: Border(right: BorderSide(color: Colors.grey))),
              child: Center(
                child: Text(
                  label,
                  style: const TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: TextField(
              style: const TextStyle(),
              obscureText: passwordType ?? false,
              decoration: null,
            ),
          ),
        ],
      ),
    );
  }
}
