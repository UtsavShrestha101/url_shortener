import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    this.isLoading = false,
    this.onPressed,
    this.textStyle,
    this.isEnable = true,
    this.color,
    this.textColor,
  });

  final bool isLoading;
  final bool isEnable;
  final String text;

  final VoidCallback? onPressed;
  final TextStyle? textStyle;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(60)),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: (color != null)
              ? MaterialStateProperty.all<Color>(
                  color!,
                )
              : null,
        ),
        onPressed: !isLoading ? onPressed : null,
        child: isLoading
            ? const Center(child: CircularProgressIndicator.adaptive())
            : Text(
                text,
                style: textStyle,
              ),
      ),
    );
  }
}
