import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeViewBody(),
    );
  }
}
