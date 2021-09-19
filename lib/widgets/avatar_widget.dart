import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String avatarImageName;

  const AvatarWidget({
    Key? key,
    required this.avatarImageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            '/export',
            arguments: avatarImageName,
          );
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xffAEAEAE),
              width: 1,
            ),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: Image.asset(avatarImageName),
        ),
      ),
    );
  }
}