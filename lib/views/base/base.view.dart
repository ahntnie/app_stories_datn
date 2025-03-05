import 'package:app_stories/base/base.page.dart';
import 'package:app_stories/base/nav.page.dart';
import 'package:app_stories/viewmodel/base/base.view.vm.dart';
import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';

class BaseView extends StatefulWidget {
  const BaseView({super.key});

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  late BaseViewVM baseVM;
  @override
  void initState() {
    super.initState();
    baseVM = BaseViewVM();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BaseViewVM>.reactive(
      viewModelBuilder: () => baseVM,
      builder: (context, viewModel, child) => BasePage(
        showAppBar: false,
        body: IndexedStack(
          index: viewModel.currentIndex,
          children: viewModel.getPages(),
        ),
        bottomNav: HomeNavigationBar(
          currentIndex: viewModel.currentIndex,
          onTabSelected: (index) => viewModel.setIndex(index),
        ),
      ),
    );
  }
}
