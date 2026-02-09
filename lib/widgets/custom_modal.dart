import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:uikit/styles.dart';
import 'package:uikit/uikit.dart';

// Губайдуллиана Камилла Рустемовна, 09.02.2026, 17:52,
enum TypeModal { photo, product }

// Губайдуллиана Камилла Рустемовна, 09.02.2026, 17:52, класс модального окна
class CustomModal {
  static void show({
    required BuildContext context, // Контекст
    required TypeModal typeModal, // Тип модального окна
    required Color backgroundModal, // Цвет фона
    required double borderRadiusModal, // Закругление фона
    required String? titleModal, // Заголовок окна
    required double? widthTitleModal, // Ширина заголовка
    required String? pathIcon, // Путь к иконке
    required VoidCallback? onIcon, // Действие при нажатии на иконку
    required double? widthIcon, // Ширина иконки
    required double? heightIcon, // Высота иконки
    required String text, // Текст 1
    required String text2, // Текст 2
    required String? text3, // Текст 3
    required String? text4, // Текст 4
    required String? text5, // Текст 5
    required VoidCallback onText, // Действие при нажатии на текст
    required VoidCallback onText2, // Действие при нажатии на текст
    required double marginModal, // Отступы
  }) {
    showMaterialModalBottomSheet(
      context: context,
      builder: (context) => Container(
        margin: EdgeInsets.all(marginModal),
        decoration: BoxDecoration(color: backgroundModal, borderRadius: BorderRadius.all(Radius.circular(borderRadiusModal))),
        child: typeModal == TypeModal.product
            ? Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: widthTitleModal,
                        child: Text(titleModal!, style: title2Semibold),
                      ),
                      Spacer(),
                      CustomIconSVG(pathIcon: pathIcon!, onIcon: onIcon!, widthIcon: widthIcon!, heightIcon: heightIcon!),
                    ],
                  ),
                ],
              )
            : Column(
                children: [
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: onText,
                    child: Text(text, style: title3Semibold),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: onText2,
                    child: Text(text, style: title3Semibold),
                  ),
                  SizedBox(height: 30),
                ],
              ),
      ),
    );
  }
}
