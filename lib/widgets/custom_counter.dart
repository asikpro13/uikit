import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

// Губайдуллиана Камилла Рустемовна, 09.02.2026, 21:16, класс счетчика
class CustomCounter extends StatelessWidget {
  final double widthCounter; // Ширина счетчика
  final double heightCounter; // Высота счетчика
  final Color background; // Фон счетчика
  final double borderRadius; // Закругление фона
  final String pathPlus; // Путь к иконке
  final VoidCallback onPlus; // Действие при нажатии на иконку
  final double widthPlus; // Ширина иконки
  final double heightPlus; // Высота иконки
  final String pathMinus; // Путь к иконке
  final VoidCallback onMinus; // Действие при нажатии на иконку
  final double widthMinus; // Ширина иконки
  final double heightMinus; // Высота иконки

  const CustomCounter({
    super.key,
    required this.widthCounter,
    required this.heightCounter,
    required this.background,
    required this.pathPlus,
    required this.onPlus,
    required this.widthPlus,
    required this.heightPlus,
    required this.pathMinus,
    required this.onMinus,
    required this.widthMinus,
    required this.heightMinus,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(borderRadius)), color: background),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconSVG(pathIcon: pathMinus, onIcon: onMinus, widthIcon: widthMinus, heightIcon: heightMinus),
          Container(height: 22, width: 2, color: input_stroke),
          CustomIconSVG(pathIcon: pathPlus, onIcon: onPlus, widthIcon: widthPlus, heightIcon: heightPlus),
        ],
      ),
    );
  }
}
