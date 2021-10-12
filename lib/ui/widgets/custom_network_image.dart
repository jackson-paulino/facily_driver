import 'package:flutter/material.dart';

import 'custom_loading_progress.dart';

class CustomNetworkImage extends StatelessWidget {
  final String idUser;
  const CustomNetworkImage({Key? key, required this.idUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        'https://southamerica-east1-facily-817c2.cloudfunctions.net/generate_qr_code?data=$idUser',
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return const CustomLoadingProgress();
        },
        errorBuilder: (context, error, stackTrace) {
          return Image.asset('assets/images/erro.jpg');
        },
      ),
    );
  }
}
