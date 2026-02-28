import 'package:collectionn_widgets/config/theme/app_theme.dart';
import 'package:flutter_riverpod/legacy.dart';

final isDarkProvider = StateProvider<bool>((ref) => false);
final colorProvider = StateProvider((ref) => colorLists);
final selectedColorProvider = StateProvider((ref) => 0);
