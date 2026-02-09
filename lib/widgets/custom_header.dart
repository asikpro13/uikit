import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';
import 'package:uikit/widgets/custom_bubble.dart';

// Губайдуллиана Камилла Рустемовна, 09.02.2026, 17:34, тип хэдера
enum TypeHeader { small, big }

// Губайдуллиана Камилла Рустемовна, 09.02.2026, 17:34, класс хэдера
class CustomHeader extends StatelessWidget {
  final TypeHeader typeHeader; // Тип хэдера
  final String textHeader; // Текст хэдера
  final String pathBubble; // Путь к иконке
  final VoidCallback onBubble; // Действие при нажатии на иконку
  final double widthBubble; // Ширина иконки
  final double heightBubble; // Высота иконки
  final Color backgroundBubble; // Фон иконки
  final double radiusBubble; // Закругление фона
  final String pathIcon; // Путь к иконке
  final VoidCallback onIcon; // Действие при нажатии на иконку
  final double widthIcon; // Ширина иконки
  final double heightIcon; // Высота иконки
  final double paddingHeader; // Отступы

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
