import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kerlingo_flutter_app/bloc/theme_bloc.dart';
import 'package:kerlingo_flutter_app/profile_screen.dart';
import 'package:kerlingo_flutter_app/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: state.mode,
            home: ProfileScreen(),
          );
        },
      ),
    );
  }
}
