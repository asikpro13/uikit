import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Губайдуллиана Камилла Рустемовна, 09.02.2026, 16:51, класс svg-иконки
class CustomIconSVG extends StatelessWidget {
  final String pathIcon; //
  final VoidCallback onIcon; //
  final double widthIcon; //
  final double heightIcon; //

  const CustomIconSVG({super.key, required this.pathIcon, required this.onIcon, required this.widthIcon, required this.heightIcon});

  @override
  // Создание состояния объекта
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onIcon,
      child: SvgPicture.asset(pathIcon, width: widthIcon, height: heightIcon),
    );
  }
}

// Губайдуллиана Камилла Рустемовна, 09.02.2026, 16:51, класс png-иконки
class CustomIconPNG extends StatelessWidget {
  final String pathIcon; //
  final VoidCallback onIcon; //
  final double widthIcon; //
  final double heightIcon; //
  final Color colorIcon; //

  const CustomIconPNG({super.key, required this.pathIcon, required this.onIcon, required this.widthIcon, required this.heightIcon, required this.colorIcon});

  @override
  // Создание состояния объекта
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onIcon,
      child: Image.asset(pathIcon, width: widthIcon, height: heightIcon, color: colorIcon),
    );
  }
}
