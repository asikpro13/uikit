import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Губайдуллиана Камилла Рустемовна, 09.02.2026, 17:38, класс иконки с фоном
class CustomBubble extends StatelessWidget {
  final String pathBubble; //
  final VoidCallback onBubble; //
  final double widthBubble; //
  final double heightBubble; //
  final Color backgroundBubble; //
  final Radius radiusBubble; //

  const CustomBubble({super.key, required this.backgroundBubble, required this.radiusBubble, required this.pathBubble, required this.onBubble, required this.widthBubble, required this.heightBubble});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onBubble,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.all(radiusBubble + Radius.circular(10)), color: backgroundBubble),
        child: SvgPicture.asset(pathBubble, width: widthBubble, height: heightBubble),
      ),
    );
  }
}
