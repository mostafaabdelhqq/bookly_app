import 'package:bookly_app/core/custom_button.dart';
import 'package:flutter/material.dart';

class ActionBook extends StatelessWidget {
  const ActionBook({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
                text: '19.99',
                textColor: Colors.black,
                backgroundColor: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12))),
          ),
          Expanded(
            child: CustomButton(
                text: 'Free Preview',
                textColor: Colors.white,
                backgroundColor: Color(0xffEF8262),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12))),
          )
        ],
      ),
    );
  }
}
