import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _isCheck = true;

  void _toggleCheckBoxWidget() {
    setState(() {
      if (_isCheck) {
        _isCheck = false;
        print("DisLicked");
      } else {
        _isCheck = true;
        print("Licked");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: _isCheck
              ? const Icon(Icons.crop_square)
              : const Icon(Icons.check_box),
          iconSize: 20,
          color: Colors.blue[900],
          onPressed: _toggleCheckBoxWidget,
        ),
      ],
    );
  }
}
