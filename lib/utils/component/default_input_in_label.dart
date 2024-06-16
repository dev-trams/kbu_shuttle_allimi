import 'package:flutter/material.dart';

class DefaultInputWidget extends StatelessWidget {
  final String? hintStr;
  final bool outlineStyle;
  final BoxDecoration? customBoxDecoration;
  final InputDecoration? customInputDecoration;
  const DefaultInputWidget(
      {super.key,
      required this.outlineStyle,
      required this.hintStr,
      this.customBoxDecoration,
      this.customInputDecoration});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 40,
      decoration: customBoxDecoration ??
          (outlineStyle
              ? const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                )
              : const BoxDecoration()),
      child: TextField(
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.bottom,
        decoration: customInputDecoration ??
            (outlineStyle
                ? InputDecoration(
                    hintText: hintStr,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  )
                : InputDecoration(hintText: hintStr)),
      ),
    );
  }
}
