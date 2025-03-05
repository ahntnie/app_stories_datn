import 'package:app_stories/constants/colors/app_colors.dart';
import 'package:app_stories/constants/colors/app_theme.dart';
import 'package:app_stories/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';

class HomeNavigationBar extends StatefulWidget {
  const HomeNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTabSelected,
  });
  final int currentIndex;
  final Future<void> Function(int) onTabSelected;

  @override
  State<HomeNavigationBar> createState() => _HomeNavigationBarState();
}

class _HomeNavigationBarState extends State<HomeNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final selectedColor =
        context.isDarkMode ? AppColors.watermelon100 : AppColors.watermelon100;
    final unselectedColor =
        context.isDarkMode ? AppColors.mono40 : AppColors.mono60;

    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      backgroundColor: context.secondaryWidgetColor,
      selectedItemColor: selectedColor,
      selectedLabelStyle: AppTheme.titleTiny12,
      unselectedLabelStyle: AppTheme.titleTiny12,
      onTap: (index) async {
        await widget.onTabSelected(index);
      },
      items: [
        // BottomNavigationBarItem(
        //   icon: HugeIcon(
        //     icon: IconlyBold.home,
        //     color: widget.currentIndex == 0 ? selectedColor : unselectedColor,
        //     size: 20,
        //   ),
        //   label: 'menu_home'.tr(),
        // ),
        // BottomNavigationBarItem(
        //   icon: HugeIcon(
        //     icon: IconlyBold.category,
        //     color: widget.currentIndex == 0 ? selectedColor : unselectedColor,
        //     size: 20,
        //   ),
        //   label: 'menu_settings'.tr(),
        // ),
        // BottomNavigationBarItem(
        //   icon: HugeIcon(
        //     icon: IconlyBold.setting,
        //     color: widget.currentIndex == 0 ? selectedColor : unselectedColor,
        //     size: 20,
        //   ),
        //   label: 'menu_settings'.tr(),
        // ),
      ],
    );
  }
}
