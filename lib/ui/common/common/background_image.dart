import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 1,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(" myIcons.backgroundimage"), fit: BoxFit.fill),
      ),
    );
  }
}
