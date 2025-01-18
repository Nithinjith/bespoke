import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/bespoke_home_app_bar.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BeSpokeHomeAppBar(),
      body: Text('Home Page'),
    );
  }
}
