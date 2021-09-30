import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final Widget? child;
  final String route;
  final String image;

  const AvatarWidget({
    Key? key,
    required this.child,
    required this.route,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, route, arguments: image);
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xffAEAEAE),
              width: 1,
            ),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: child,
        ),
      ),
    );
  }
}