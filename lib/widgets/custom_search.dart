import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

// Губайдуллиана Камилла Рустемовна, 09.02.2026, 17:52, класс поиска
class CustomSearch extends StatelessWidget {
  final TextEditingController searchController; //
  final String hintSearch; //
  final Color colorBorder; //
  final Color backgroundSearch; //
  final Color colorCursor; //
  final Radius borderRadiusSearch; //
  final String pathIcon; //
  final VoidCallback onIcon; //
  final double widthIcon; //
  final double heightIcon; //
  final String pathIcon2; //
  final double widthIcon2; //
  final double heightIcon2; //

  const CustomSearch({
    super.key,
    required this.searchController,
    required this.hintSearch,
    required this.colorBorder,
    required this.backgroundSearch,
    required this.colorCursor,
    required this.pathIcon,
    required this.onIcon,
    required this.widthIcon,
    required this.heightIcon,
    required this.pathIcon2,
    required this.widthIcon2,
    required this.heightIcon2,
    required this.borderRadiusSearch,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      cursorColor: colorCursor,
      decoration: InputDecoration(
        fillColor: backgroundSearch,
        filled: true,
        hintText: hintSearch,
        hintStyle: headlineRegular,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(borderRadiusSearch),
          borderSide: BorderSide(color: colorBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(borderRadiusSearch),
          borderSide: BorderSide(color: colorBorder),
        ),
        prefix: CustomIconSVG(pathIcon: pathIcon, onIcon: onIcon, widthIcon: widthIcon, heightIcon: heightIcon),
        suffix: searchController.text.isNotEmpty ? CustomIconSVG(pathIcon: pathIcon2, onIcon: () {
          searchController.clear();
        }, widthIcon: widthIcon2, heightIcon: heightIcon2) : null,
      ),
    );
  }
}
