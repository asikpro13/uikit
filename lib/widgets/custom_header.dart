import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';
import 'package:uikit/widgets/custom_bubble.dart';

// Губайдуллиана Камилла Рустемовна, 09.02.2026, 17:34, тип хэдера
enum TypeHeader { small, big }

// Губайдуллиана Камилла Рустемовна, 09.02.2026, 17:34, класс хэдера
class CustomHeader extends StatelessWidget {
  final TypeHeader typeHeader;
  final String textHeader; //
  final String pathBubble; //
  final VoidCallback onBubble; //
  final double widthBubble; //
  final double heightBubble; //
  final Color backgroundBubble; //
  final double radiusBubble; //
  final String pathIcon; //
  final VoidCallback onIcon; //
  final double widthIcon; //
  final double heightIcon; //
  final double paddingHeader; //

  const CustomHeader({
    super.key,
    required this.typeHeader,
    required this.textHeader,
    required this.pathBubble,
    required this.onBubble,
    required this.widthBubble,
    required this.heightBubble,
    required this.backgroundBubble,
    required this.radiusBubble,
    required this.pathIcon,
    required this.onIcon,
    required this.widthIcon,
    required this.heightIcon,
    required this.paddingHeader,
  });

  @override
  Widget build(BuildContext context) {
    if (typeHeader == TypeHeader.big) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingHeader),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomBubble(backgroundBubble: backgroundBubble, radiusBubble: radiusBubble, pathBubble: pathBubble, onBubble: onBubble, widthBubble: widthBubble, heightBubble: heightBubble),
                Spacer(),
                CustomIconSVG(pathIcon: pathIcon, onIcon: onIcon, widthIcon: widthIcon, heightIcon: heightIcon),
              ],
            ),
            SizedBox(height: 20),
            Text(textHeader, style: title1ExtraBold),
          ],
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingHeader),
        child: Row(
          children: [
            CustomBubble(backgroundBubble: backgroundBubble, radiusBubble: radiusBubble, pathBubble: pathBubble, onBubble: onBubble, widthBubble: widthBubble, heightBubble: heightBubble),
            Spacer(),
            Text(textHeader, style: title2Semibold),
            Spacer(),
            CustomIconSVG(pathIcon: pathIcon, onIcon: onIcon, widthIcon: widthIcon, heightIcon: heightIcon),
          ],
        ),
      );
    }
  }
}
