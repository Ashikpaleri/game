import 'package:flutter/cupertino.dart';

class ImageBox extends StatelessWidget {
  final AssetImage? assetImage;

  ImageBox({this.assetImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: assetImage!,
          fit: BoxFit.fill,
        ),
        // shape: BoxShape.circle,
      ),
    );
  }
}
