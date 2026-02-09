import 'package:flutter/material.dart';
import 'package:uikit/styles.dart';
import 'package:uikit/uikit.dart';

// Губайдуллиана Камилла Рустемовна, 09.02.2026, 18:23, тип кнопки
enum TypeButton { primary, inactive, secondary, tetriary, chips, login, cart }

// Губайдуллиана Камилла Рустемовна, 09.02.2026, 18:23, класс кнопки
class CustomButton extends StatelessWidget {
  final TypeButton typeButton; // Тип кнопки
  final VoidCallback onPressed; // Действие при нажатии на кнопку
  final double widthButton; // Ширина кнопки
  final double heightButton; // Высота кнопки
  final double borderRadiusButton; // Закругление кнопки
  final String textButton; // Текст кнопки
  final String? price; // Параметр для cart
  final Color textColor; // Цвет текста
  final Color backgroundButton; // Фон кнопки
  final Color? colorBorder; // Цвет границ
  final String? pathIcon; // Путь к иконке
  final VoidCallback? onIcon; // Действие при нажатии на иконку
  final double? widthIcon; // Ширина иконки
  final double? heightIcon; // Высота иконки
  final bool? isSelected; // Параметр для chips
  final Color? selectedText; // Параметр для chips
  final Color? selectedButton; // Параметр для chips
  final double paddingButton; // Отступы

  const CustomButton({
    super.key,
    required this.typeButton,
    required this.onPressed,
    required this.widthButton,
    required this.heightButton,
    required this.borderRadiusButton,
    required this.textButton,
    this.price,
    required this.textColor,
    required this.backgroundButton,
    this.colorBorder,
    this.pathIcon,
    this.onIcon,
    this.widthIcon,
    this.heightIcon,
    this.isSelected,
    this.selectedText,
    this.selectedButton,
    required this.paddingButton,
  });

  @override
  Widget build(BuildContext context) {
    if (typeButton == TypeButton.cart) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(widthButton, heightButton),
          backgroundColor: backgroundButton,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(borderRadiusButton))),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingButton),
          child: Row(
            children: [
              CustomIconSVG(pathIcon: pathIcon!, onIcon: onIcon!, widthIcon: widthIcon!, heightIcon: heightIcon!),
              SizedBox(width: 20),
              Text(
                textButton,
                overflow: TextOverflow.ellipsis,
                style: title3Semibold.copyWith(color: textColor),
              ),
              Spacer(),
              Text(
                price!,
                overflow: TextOverflow.ellipsis,
                style: title3Semibold.copyWith(color: textColor),
              ),
            ],
          ),
        ),
      );
    } else if (typeButton == TypeButton.login) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(widthButton, heightButton),
          backgroundColor: backgroundButton,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(borderRadiusButton))),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingButton),
          child: Row(
            children: [
              Spacer(),
              CustomIconSVG(pathIcon: pathIcon!, onIcon: onIcon!, widthIcon: widthIcon!, heightIcon: heightIcon!),
              SizedBox(width: 20),
              Text(
                textButton,
                overflow: TextOverflow.ellipsis,
                style: title3Semibold.copyWith(color: textColor),
              ),
              Spacer(),
            ],
          ),
        ),
      );
    } else if (typeButton == TypeButton.chips) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(widthButton, heightButton),
          backgroundColor: isSelected! ? selectedButton : backgroundButton,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(borderRadiusButton))),
        ),
        onPressed: onPressed,
        child: Text(
          textButton,
          overflow: TextOverflow.ellipsis,
          style: title3Semibold.copyWith(color: isSelected! ? selectedText : textColor),
        ),
      );
    } else {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(widthButton, heightButton),
          backgroundColor: backgroundButton,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(borderRadiusButton))),
          side: typeButton == TypeButton.secondary ? BorderSide(color: colorBorder!) : BorderSide.none,
        ),
        onPressed: onPressed,
        child: Text(
          textButton,
          overflow: TextOverflow.ellipsis,
          style: title3Semibold.copyWith(color: textColor),
        ),
      );
    }
  }
}
