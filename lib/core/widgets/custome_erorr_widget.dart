import 'package:flutter/material.dart';

class CustomeErorrWidget extends StatelessWidget {
  const CustomeErorrWidget({super.key, required this.errorMessage});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Text(errorMessage , style: const TextStyle(color: Colors.red),);
  }
}
