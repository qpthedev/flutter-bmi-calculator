import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  // const BottomButton({
  //   Key? key,
  // }) : super(key: key);

  BottomButton({required this.onTap, required this.buttonTitle});

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kCardTextStyle.copyWith(
              fontSize: 20,
            ),
          ),
        ),
        margin: EdgeInsets.only(
          top: 5,
          bottom: 10,
        ),
        decoration: BoxDecoration(
          color: kBottomContainerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        width: MediaQuery.of(context).size.width * 0.95,
        // height: bottomContainerHeight,
        height: MediaQuery.of(context).size.height * 0.07,
      ),
    );
  }
}
