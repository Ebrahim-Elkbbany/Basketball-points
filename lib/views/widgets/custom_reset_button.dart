import 'package:basketball_points/constant.dart';
import 'package:flutter/material.dart';
class CustomResetButton extends StatelessWidget {
  const CustomResetButton({Key? key, this.onPressed, required this.teamName}) : super(key: key);
  final  void Function()? onPressed;
  final String teamName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(170, 45),
          backgroundColor: kPrimaryColor,
          ),
      onPressed: onPressed,
      child: Text(
        teamName,
        style: const  TextStyle(
            color: Colors.black,
            fontSize: 19,
            ),
      ),
    );
  }
}
