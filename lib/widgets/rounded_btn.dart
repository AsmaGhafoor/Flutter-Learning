import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  // New parameter
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final Color? textColor;  
  final Color? iconColor; 
  final VoidCallback? callBack;

  // Constructor
  const RoundedButton({
    super.key, 
    required this.btnName,
    this.icon,
    this.bgColor = Colors.blue,
    this.textStyle,
    this.textColor = Colors.white, 
    this.iconColor = Colors.white,
    this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // ! means it is not null
        callBack!();
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shadowColor: bgColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(21),
          ))),
      child: icon != null ? Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon!.icon,
            color: iconColor, // Apply iconColor to the icon
          ),
          Container(
            width: 11,
          ),
          Text(
            btnName,
            style: textStyle?.copyWith(color: textColor), // Applying textColor
          )
        ],
      ) : Text(
        btnName,
        style: textStyle?.copyWith(color: textColor), // Applying textColor
      ),
    );
  }
}
