import 'package:flutter/material.dart';
import 'package:uikit/styles.dart';
import 'package:uikit/uikit.dart';

// Губайдуллиана Камилла Рустемовна, 09.02.2026, 18:23, тип кнопки
enum TypeButton { primary, inactive, secondary, tetriary, chips, login, cart }

// Губайдуллиана Камилла Рустемовна, 09.02.2026, 18:23, класс кнопки
class CustomButton extends StatelessWidget {
  final TypeButton typeButton; //
  final VoidCallback onPressed; //
  final double widthButton; //
  final double heightButton; //
  final Radius borderRadiusButton; //
  final String textButton; //
  final String? price; //
  final Color textColor; //
  final Color backgroundButton; //
  final Color? colorBorder; //
  final String? pathIcon; //
  final VoidCallback? onIcon; //
  final double? widthIcon; //
  final double? heightIcon; //
  final bool? isSelected; //
  final Color? selectedText; //
  final Color? selectedButton; //
  final double paddingButton;

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
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(borderRadiusButton)),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingButton),
          child: Row(
            children: [
              CustomIconSVG(pathIcon: pathIcon!, onIcon: onIcon!, widthIcon: widthIcon!, heightIcon: heightIcon!),
              SizedBox(width: 20),
              Text(textButton, style: title3Semibold.copyWith(color: textColor)),
              Spacer(),
              Text(price!, style: title3Semibold.copyWith(color: textColor)),
            ],
          ),
        ),
      );
    } else if (typeButton == TypeButton.login) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(widthButton, heightButton),
          backgroundColor: backgroundButton,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(borderRadiusButton)),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingButton),
          child: Row(
            children: [
              Spacer(),
              CustomIconSVG(pathIcon: pathIcon!, onIcon: onIcon!, widthIcon: widthIcon!, heightIcon: heightIcon!),
              SizedBox(width: 20),
              Text(textButton, style: title3Semibold.copyWith(color: textColor)),
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
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(borderRadiusButton)),
        ),
        onPressed: onPressed,
        child: Text(textButton, style: title3Semibold.copyWith(color: isSelected! ? selectedText : textColor)),
      );
    } else {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(widthButton, heightButton),
          backgroundColor: backgroundButton,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(borderRadiusButton)),
          side: typeButton == TypeButton.secondary ? BorderSide(color: colorBorder!) : BorderSide.none,
        ),
        onPressed: onPressed,
        child: Text(textButton, style: title3Semibold.copyWith(color: textColor)),
      );
    }
  }
}
