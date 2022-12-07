import 'package:flutter/material.dart';
import '../../../shared/theme/app_colors.dart';
import '../../../shared/theme/app_typography.dart';

class CustomAppBarWidget extends PreferredSize {
  CustomAppBarWidget({Key? key})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(80),
          child: SafeArea(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                color: AppColors.primary,
                child: Text(
                  'Choose a Category.',
                  style: AppTypography.textSmall,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        );
}
