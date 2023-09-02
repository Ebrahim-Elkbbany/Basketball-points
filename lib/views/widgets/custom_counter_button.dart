import 'package:basketball_points/constant.dart';
import 'package:flutter/material.dart';

class CustomCounterButton extends StatelessWidget {
  const CustomCounterButton({Key? key, required this.text, this.onPressed, this.deleteOnPressed})
      : super(key: key);
  final String text;
  final void Function()? deleteOnPressed;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width:9),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            minimumSize: const Size(20, 45),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(color: textPrimaryColor, fontSize: 19),
          ),
        ),
        IconButton(onPressed: deleteOnPressed, icon: const Icon(Icons.delete,size: 30,)),
      ],
    );
  }
}
