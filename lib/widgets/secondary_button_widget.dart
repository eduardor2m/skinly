import 'package:flutter/material.dart';

class SecondaryButtonWidget extends StatefulWidget {
  final String text;
  final Function()? action;

  const SecondaryButtonWidget({
    Key? key,
    required this.text,
    required this.action,
  }) : super(key: key);

  @override
  _SecondaryButtonWidgetState createState() => _SecondaryButtonWidgetState();
}

class _SecondaryButtonWidgetState extends State<SecondaryButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: widget.action,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(widget.text)],
        ),
      )
    );
  }
}