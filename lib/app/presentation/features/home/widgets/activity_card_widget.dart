import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/theme/app_colors.dart';
import '../../../shared/theme/app_typography.dart';

class ActivityCardWidget extends HookWidget {
  final String text;
  final String imagePath;
  final VoidCallback onTap;
  const ActivityCardWidget({
    Key? key,
    required this.text,
    required this.imagePath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12,
      ),
      child: Container(
        constraints: const BoxConstraints(
          maxHeight: 150,
          maxWidth: 320,
        ),
        child: Material(
          color: AppColors.primary,
          borderRadius: const BorderRadius.all(
            Radius.circular(18),
          ),
          child: InkWell(
            customBorder: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            onTap: onTap,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: SvgPicture.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        text,
                        style: AppTypography.textSmall,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
