import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<ThemeChanged>((event, emit) {
      emit(new ThemeChanges(event.isDark));
    });
  }
}
