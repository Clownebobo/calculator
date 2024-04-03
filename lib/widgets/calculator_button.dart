import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final double size;
  final Color color;
  final Color? colorText;
  final Gradient? gradient;

  const CalculatorButton(
      {required this.label,
      required this.size,
      required this.color,
      required this.onTap,
      this.gradient,
      this.colorText,
      super.key});

  @override
  Widget build(BuildContext context) {
    const double br = 100;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(br),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            gradient: gradient,
            borderRadius: BorderRadius.circular(br),
            color: color),
        child: Center(
          child: Text(
            label,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: colorText ?? Theme.of(context).colorScheme.onBackground),
          ),
        ),
      ),
    );
  }
}
