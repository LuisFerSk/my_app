import 'package:my_app/core/framework/colors.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;
  final bool isInverted;
  final VoidCallback callback;

  const ActionButton({
    Key? key,
    required this.icon,
    this.isInverted = false,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: isInverted ? secondary : Colors.white,
        ),
        child: Icon(icon, color: isInverted ? Colors.white : secondary),
      ),
    );
  }
}
