import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/assets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24.0,
        right: 24.0,
        top: 36,
        bottom: 12,
      ),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 110),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 22),
          ),
        ],
      ),
    );
  }
}
