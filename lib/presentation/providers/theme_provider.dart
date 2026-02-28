import 'package:collectionn_widgets/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

// final isDarkProvider = StateProvider<bool>((ref) => false); alternativa de mudança
final colorProvider = Provider((ref) => colorLists);
// final selectedColorProvider = StateProvider((ref) => 0); alternativa de mudança

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex({int selectedColor = 0}) {
    state = state.copyWith(selectedColor: selectedColor);
  }
}
