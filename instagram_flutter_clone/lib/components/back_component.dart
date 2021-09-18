import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BackComponent extends StatelessWidget {
  const BackComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(13.0),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: const Icon(
          FontAwesomeIcons.chevronLeft,
          color: Colors.white,
          size: 18,
        ),
      ),
    );
  }
}
