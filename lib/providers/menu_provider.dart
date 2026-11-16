import 'package:flutter/foundation.dart';

import '../data/dummy_menu.dart';
import '../models/menu_item.dart';

class MenuProvider extends ChangeNotifier {
  String _query = '';
  String _selectedCategory = 'Semua';
  bool _showFavoritesOnly = false;
  final Set<int> _favoriteIds = {};

  String get selectedCategory => _selectedCategory;
  bool get showFavoritesOnly => _showFavoritesOnly;
  int get favoriteCount => _favoriteIds.length;

  bool isFavorite(int id) => _favoriteIds.contains(id);

  List<MenuItem> get items {
    return dummyMenu.where((item) {
      final matchQuery =
          item.name.toLowerCase().contains(_query.toLowerCase());
      final matchCategory =
          _selectedCategory == 'Semua' || item.category == _selectedCategory;
      final matchFav = !_showFavoritesOnly || _favoriteIds.contains(item.id);
      return matchQuery && matchCategory && matchFav;
    }).toList();
  }

  void setQuery(String value) {
    _query = value;
    notifyListeners();
  }

  void setCategory(String value) {
    _selectedCategory = value;
    notifyListeners();
  }

  void toggleFavorite(int id) {
    if (!_favoriteIds.remove(id)) _favoriteIds.add(id);
    notifyListeners();
  }

  void toggleShowFavoritesOnly() {
    _showFavoritesOnly = !_showFavoritesOnly;
    notifyListeners();
  }
}
