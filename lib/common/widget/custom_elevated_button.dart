
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    super.key,
    required this.name,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          name,
        ),
      ),
    );
  }
}
