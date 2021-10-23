import 'package:flutter/material.dart';
import 'package:skinly/data/models/avatar_model.dart';

class AvatarWidget extends StatelessWidget {
  final Widget? child;
  final String route;
  final AvatarModel? avatar;

  const AvatarWidget({
    Key? key,
    required this.child,
    required this.route,
    this.avatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, route, arguments: avatar);
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