import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Губайдуллиана Камилла Рустемовна, 09.02.2026, 17:38, класс иконки с фоном
class CustomBubble extends StatelessWidget {
  final String pathBubble; // Путь к иконке
  final VoidCallback onBubble; // Действие при нажатии на иконку
  final double widthBubble; // Ширина
  final double heightBubble; // Высота
  final Color backgroundBubble; // Фон
  final double radiusBubble; // Закругление фона

  const CustomBubble({super.key, required this.backgroundBubble, required this.radiusBubble, required this.pathBubble, required this.onBubble, required this.widthBubble, required this.heightBubble,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onBubble,
      child: Container(
        width: widthBubble + 5,
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(radiusBubble)), color: backgroundBubble),
        child: SvgPicture.asset(pathBubble, width: widthBubble, height: heightBubble),
      ),
    );
  }
}
