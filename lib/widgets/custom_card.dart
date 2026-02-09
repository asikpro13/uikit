import 'package:flutter/material.dart';
import 'package:uikit/styles.dart';
import 'package:uikit/uikit.dart';
import 'package:uikit/widgets/custom_button.dart';
import 'package:uikit/widgets/custom_counter.dart';

// Губайдуллиана Камилла Рустемовна, 09.02.2026, 21:22, класс карточка
enum TypeCard { primary, project, cart }

// Губайдуллиана Камилла Рустемовна, 09.02.2026, 21:22, класс карточка
class CustomCard extends StatelessWidget {
  final TypeCard typeCard; // Тип карточки
  final double margin; // Отступы
  final Color background; // Фон карточки
  final String title; // Заголовок
  final double widthTitle; // Ширина заголовка
  final String text; // Текст 1
  final String text2; // Текст 2
  final double borderRadius; // Закругление
  final String? pathIcon; // Путь к иконке
  final VoidCallback? onIcon; // Действие при нажатии на иконку
  final double? widthIcon; // Ширина иконки
  final double? heightIcon; // Высота иконки
  final VoidCallback? onPressed; // Действие при нажатии на кнопку
  final Color? colorBorder; // Цвет границ
  final double? widthButton; // Ширина кнопки
  final double? heightButton; // Высота кнопки
  final double? borderRadiusButton; // Закругление кнопки
  final String? textButton; // Текст кнопки
  final String? textButton2; // Текст кнопки 2
  final Color? textColor; // Цвет текста
  final Color? backgroundButton; // Фон кнопки
  final Color? selectedText; // Цвет выбранного текста
  final Color? selectedButton; // Цвет выбранной кнопки
  final double? paddingButton; // Отступы
  final bool? inCart; // Переменная для cart
  final double? widthCounter; // Ширина счетчика
  final double? heightCounter; // Высота счетчика
  final Color? backgroundCounter; // Фон счетчика
  final double? borderRadiusCounter; // Закругление фона
  final String? pathPlus; // Путь к иконке
  final VoidCallback? onPlus; // Действие при нажатии на иконку
  final double? widthPlus; // Ширина иконки
  final double? heightPlus; // Высота иконки
  final String? pathMinus; // Путь к иконке
  final VoidCallback? onMinus; // Действие при нажатии на иконку
  final double? widthMinus; // Ширина иконки
  final double? heightMinus; // Высота иконки

  const CustomCard({
    super.key,
    required this.typeCard,
    required this.margin,
    required this.background,
    required this.title,
    required this.widthTitle,
    required this.text,
    required this.text2,
    required this.borderRadius,
    this.pathIcon,
    this.onIcon,
    this.widthIcon,
    this.heightIcon,
    this.onPressed,
    this.widthButton,
    this.heightButton,
    this.borderRadiusButton,
    this.textButton,
    this.textColor,
    this.backgroundButton,
    this.paddingButton,
    this.inCart,
    this.selectedText,
    this.selectedButton,
    this.textButton2,
    this.colorBorder,
    this.widthCounter,
    this.heightCounter,
    this.backgroundCounter,
    this.borderRadiusCounter,
    this.pathPlus,
    this.onPlus,
    this.widthPlus,
    this.heightPlus,
    this.pathMinus,
    this.onMinus,
    this.widthMinus,
    this.heightMinus,
  }); //

  @override
  Widget build(BuildContext context) {
    if (typeCard == TypeCard.primary) {
      return Card(
        color: background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
        child: Padding(
          padding:  EdgeInsets.all(margin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: widthTitle,
                child: Text(title, style: headlineMedium),
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(text, style: captionSemibold),
                      SizedBox(height: 10),
                      Text(text2, style: title3Semibold),
                    ],
                  ),
                  Spacer(),
                  CustomButton(
                    typeButton: inCart! ? TypeButton.secondary : TypeButton.primary,
                    onPressed: onPressed!,
                    widthButton: widthButton!,
                    heightButton: heightButton!,
                    colorBorder: colorBorder!,
                    borderRadiusButton: borderRadiusButton!,
                    textButton: inCart! ? textButton! : textButton2!,
                    textColor: inCart! ? textColor! : selectedText!,
                    backgroundButton: inCart! ? backgroundButton! : selectedButton!,
                    paddingButton: paddingButton!,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
    if (typeCard == TypeCard.cart) {
      return Card(
        margin: EdgeInsets.all(margin),
        color: background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: widthTitle,
                  child: Text(title, style: headlineMedium),
                ),
                Spacer(),
                CustomIconSVG(pathIcon: pathIcon!, onIcon: onIcon!, widthIcon: widthIcon!, heightIcon: heightIcon!),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(text, style: title3Medium),
                Spacer(),
                Text(text2, style: textRegular),
                SizedBox(width: 30),
                CustomCounter(
                  widthCounter: widthCounter!,
                  heightCounter: heightCounter!,
                  background: backgroundCounter!,
                  pathPlus: pathPlus!,
                  onPlus: onPlus!,
                  widthPlus: widthPlus!,
                  heightPlus: heightPlus!,
                  pathMinus: pathMinus!,
                  onMinus: onMinus!,
                  widthMinus: widthMinus!,
                  heightMinus: heightMinus!,
                  borderRadius: borderRadiusCounter!,
                ),
              ],
            ),
          ],
        ),
      );
    } else {
      return Card(
        margin: EdgeInsets.all(margin),
        color: background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: widthTitle,
                  child: Text(title, style: headlineMedium),
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Text(text, style: captionSemibold),
                Spacer(),
                CustomButton(
                  typeButton: TypeButton.primary,
                  onPressed: onPressed!,
                  widthButton: widthButton!,
                  heightButton: heightButton!,
                  colorBorder: colorBorder!,
                  borderRadiusButton: borderRadiusButton!,
                  textButton: textButton!,
                  textColor: textColor!,
                  backgroundButton: backgroundButton!,
                  paddingButton: paddingButton!,
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}
