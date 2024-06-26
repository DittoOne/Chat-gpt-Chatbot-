import 'package:chat_gpt/provider/active_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class ThemeSwitch extends ConsumerStatefulWidget {
  const ThemeSwitch({super.key});

  @override
  ConsumerState<ThemeSwitch> createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends ConsumerState<ThemeSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
        activeColor: Theme.of(context).colorScheme.secondary,
        value: ref.watch(activeThemeProvider) == Themes.dark,
        onChanged: (value){
           ref.read(activeThemeProvider.notifier).state = value ? Themes.dark :Themes.light;
        },

    );
  }
}
