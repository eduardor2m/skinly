import 'package:flutter/material.dart';

class PrimaryButtonWidget extends StatefulWidget {
  final Function()? action;
  final Icon? icon;
  final String text;
  
  const PrimaryButtonWidget({
    Key? key,
    this.action,
    this.icon,
    required this.text,
  }) : super(key: key);

  @override
  _PrimaryButtonWidgetState createState() => _PrimaryButtonWidgetState();
}

class _PrimaryButtonWidgetState extends State<PrimaryButtonWidget> {
  List<Widget> generateButtonContent() {
    if (widget.icon == null) {
      return [Text(widget.text)];
    }

    return [
      Text(widget.text),
      widget.icon!,
      SizedBox(width: 10),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.action,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: generateButtonContent(),
        ),
      ),
    );
  }
}