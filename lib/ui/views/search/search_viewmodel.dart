import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/views/recent_search/recent_search_view.dart';
import 'package:stacked/stacked.dart';

class SearchViewModel extends BaseViewModel {
  int selectIndex = 0;
  List<String> searchTabs = [
    "Top",
    'Created On',
    'Ticket No',
    'Residual Risk',
  ];

  void tabIndex(int index) {
    selectIndex = index;
    notifyListeners();
  }

  Widget getScreen(selectIndex) {
    switch (selectIndex) {
      case 0:
        return const RecentSearchView();
      case 1:
        return Container();
      case 2:
        return Container();
      case 3:
        return Container();

      default:
        return Container();
    }
  }
}
