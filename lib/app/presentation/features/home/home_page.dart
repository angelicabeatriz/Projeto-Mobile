import 'package:flutter/material.dart';

import 'components/activity_cards_component.dart';
import 'widgets/custom_appbar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(),
      body: const ActivityCardComponent(),
    );
  }
}
