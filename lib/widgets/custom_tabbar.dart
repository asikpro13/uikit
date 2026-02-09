import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

// Губайдуллиана Камилла Рустемовна, 09.02.2026, 22:13, класс навигации
class CustomTabBar extends StatelessWidget {
  final Color background; //
  final Color selectedColor; //
  final Color unselectedColor; //
  final List<String> images; //
  final List<String> titles; //
  final int selectedIndex; //
  final VoidCallback onPressed; //

  const CustomTabBar({super.key, required this.background, required this.selectedColor, required this.unselectedColor, required this.images, required this.titles, required this.selectedIndex, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: background,
      currentIndex: selectedIndex,
      onTap: (index) {
        onPressed;
      },
      unselectedItemColor: unselectedColor,
      unselectedLabelStyle: caption2Regular,
      selectedLabelStyle: caption2Regular,
      selectedItemColor: selectedColor,
type: BottomNavigationBarType.fixed,
      items: List.generate(
        titles.length,
        (index) => BottomNavigationBarItem(
          icon: CustomIconPNG(pathIcon: images[index], onIcon: () {}, widthIcon: 32, heightIcon: 32, colorIcon: selectedIndex == index ? selectedColor : unselectedColor),
        ),
      ),
    );
  }
}
