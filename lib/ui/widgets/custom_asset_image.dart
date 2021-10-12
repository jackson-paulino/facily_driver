import 'package:facily_driver/ui/widgets/custom_loading_progress.dart';
import 'package:flutter/material.dart';

class CustomAssetImage extends StatelessWidget {
  const CustomAssetImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/logo.png', width: 500, height: 220),
        Image.asset('assets/images/driver.png', width: 150),
        const CustomLoadingProgress()
      ],
    );
  }
}
