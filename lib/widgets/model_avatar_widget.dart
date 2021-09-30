import 'package:flutter/material.dart';

class ModelAvatarWidget extends StatelessWidget {
  final String image;

  const ModelAvatarWidget({ required this.image, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () {},
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Image.asset('assets/' + image, width: 100, height: 100),
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xffAEAEAE),
              width: 1,
            ),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
      ),
    );
  }
}