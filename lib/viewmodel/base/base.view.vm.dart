import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';

class BaseViewVM extends BaseViewModel {
  late BuildContext viewContext;
  int currentIndex = 0;
  BaseViewVM() {
  }
  Future<void> setIndex(int index) async {
    currentIndex = index;
    notifyListeners();
  }

  List<Widget> getPages() {
    return [
    ];
  }
}
