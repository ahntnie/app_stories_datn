import 'package:app_stories/constants/colors/app_theme.dart';
import 'package:app_stories/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';


class BasePage extends StatefulWidget {
  final bool showLogo;
  final bool showSearch;
  final bool showMore;
  final bool showFinal;
  final bool showAdd;
  final String? title;
  final bool showLogout;
  final bool showAppBar;
  final VoidCallback? onTap;
  final VoidCallback? onTapAdd;
  final Widget body;
  final Widget? bottomNav;
  final bool showLeading;
  final VoidCallback? onPressedLeading;
  final Widget? bottomSheet;
  final Widget? floating;
  final FloatingActionButtonLocation? locationFloating;
  final bool? extendBody;
  const BasePage({
    super.key,
    this.locationFloating,
    this.showFinal = false,
    this.extendBody,
    this.showMore = false,
    this.showAdd = false,
    this.onTapAdd,
    this.onTap,
    this.showLogo = false,
    this.showSearch = false,
    this.title,
    this.floating,
    this.showLogout = false,
    this.showAppBar = true,
    this.bottomSheet,
    required this.body,
    this.bottomNav,
    this.showLeading = false,
    this.onPressedLeading,
  });

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButton: widget.floating,
      appBar: widget.showAppBar
          ? AppBar(
              automaticallyImplyLeading: widget.showLeading,
              toolbarHeight: 70,
              backgroundColor: context.primaryBackgroundColor,
              foregroundColor: context.primaryTextColor,
              iconTheme: const IconThemeData(),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title ?? '',
                    style: AppTheme.headLineLarge32,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          : null,
      body: widget.body,
      bottomNavigationBar: widget.bottomNav,
      bottomSheet: widget.bottomSheet,
    );
  }
}
