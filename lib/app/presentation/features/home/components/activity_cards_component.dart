import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:luana_bored/app/presentation/shared/theme/app_images.dart';
import '../widgets/activity_card_widget.dart';

class ActivityCardComponent extends HookWidget {
  const ActivityCardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ActivityCardWidget(
          text: 'Random',
          imagePath: AppImages.randomImage,
          onTap: () {
            Navigator.of(context).pushNamed('/details');
          },
        ),
        ActivityCardWidget(
          text: 'Education',
          imagePath: AppImages.educationImage,
          onTap: () {
            Navigator.of(context).pushNamed('/details');
          },
        ),
        ActivityCardWidget(
          text: 'Recreational',
          imagePath: AppImages.recreationalImage,
          onTap: () {
            Navigator.of(context).pushNamed('/details');
          },
        ),
        ActivityCardWidget(
          text: 'Social',
          imagePath: AppImages.socialImage,
          onTap: () {
            Navigator.of(context).pushNamed('/details');
          },
        ),
        ActivityCardWidget(
          text: 'Diy',
          imagePath: AppImages.diyImage,
          onTap: () {
            Navigator.of(context).pushNamed('/details');
          },
        ),
        ActivityCardWidget(
          text: 'Charity',
          imagePath: AppImages.charityImage,
          onTap: () {
            Navigator.of(context).pushNamed('/details');
          },
        ),
        ActivityCardWidget(
          text: 'Cooking',
          imagePath: AppImages.cookingImage,
          onTap: () {
            Navigator.of(context).pushNamed('/details');
          },
        ),
        ActivityCardWidget(
          text: 'Medidation',
          imagePath: AppImages.meditationImage,
          onTap: () {
            Navigator.of(context).pushNamed('/details');
          },
        ),
        ActivityCardWidget(
          text: 'Music',
          imagePath: AppImages.musicImage,
          onTap: () {
            Navigator.of(context).pushNamed('/details');
          },
        ),
        ActivityCardWidget(
          text: 'Busywork',
          imagePath: AppImages.busyImage,
          onTap: () {
            Navigator.of(context).pushNamed('/details');
          },
        ),
      ],
    );
  }
}
