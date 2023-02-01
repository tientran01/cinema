import 'package:flutter/material.dart';

class CustomIconWidget extends StatelessWidget {
  final Color bgColor;
  final IconData icon;
  final VoidCallback? onTap;
  final String title;
  const CustomIconWidget({
    Key? key,
    this.bgColor = Colors.grey,
    required this.icon,
    this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: bgColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white70,
              size: 30.0,
            ),
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
