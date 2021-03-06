import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomSpinner extends StatelessWidget {
  const CustomSpinner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle
      ),
      child: const CircularProgressIndicator( color: AppTheme.primary ),
    );
  }
}