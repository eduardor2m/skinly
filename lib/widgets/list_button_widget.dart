import 'package:flutter/material.dart';

class ListButtonWidget extends StatefulWidget {
  final String text;

  const ListButtonWidget({
    required this.text,
    Key? key
  }) : super(key: key);

  @override
  _ListButtonWidgetState createState() => _ListButtonWidgetState();
}

class _ListButtonWidgetState extends State<ListButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () {},
        child: Text(widget.text),
      ),
    );
  }
}