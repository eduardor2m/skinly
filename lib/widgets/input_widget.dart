import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String label;
  final Function(String)? onChange;
  
  const InputWidget({
    required this.label,
    this.onChange,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (String newValue) => onChange!(newValue),
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }
}