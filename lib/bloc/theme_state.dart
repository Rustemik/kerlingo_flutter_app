part of 'theme_bloc.dart';

@immutable
sealed class ThemeState {
  final ThemeMode mode = ThemeMode.dark;
}

final class ThemeInitial extends ThemeState {
  final ThemeMode mode = ThemeMode.dark;
}

final class ThemeChanges extends ThemeState {
  ThemeMode mode = ThemeMode.dark;

  ThemeChanges(bool isDark) {
    if (isDark)
      mode = ThemeMode.dark;
    else
      mode = ThemeMode.light;
  }
}
