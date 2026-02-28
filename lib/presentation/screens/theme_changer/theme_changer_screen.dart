import 'package:collectionn_widgets/presentation/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const name = 'theme_changer';
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeNotifierProvider).isDarkmode;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(themeNotifierProvider.notifier).toggleDarkmode();
            },
            icon: Icon(
              isDark ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
            ),
          ),
        ],
      ),
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int colorIndex = ref.watch(themeNotifierProvider).selectedColor;
    final List<Color> colorLists = ref.watch(colorProvider);
    return ListView.builder(
      itemCount: colorLists.length,
      itemBuilder: (context, index) {
        final color = colorLists[index];
        return RadioGroup(
          groupValue: colorIndex,
          onChanged: (value) {
            ref
                .watch(themeNotifierProvider.notifier)
                .changeColorIndex(selectedColor: value!);
          },
          child: RadioListTile(
            value: index,
            title: Text('Esta cor', style: TextStyle(color: color)),
            subtitle: Text('${color.toARGB32()}'),
          ),
        );
      },
    );
  }
}
