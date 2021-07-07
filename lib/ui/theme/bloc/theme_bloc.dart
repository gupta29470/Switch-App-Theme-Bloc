import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:switch_theme_bloc/ui/theme/app_themes.dart';
import 'package:switch_theme_bloc/ui/theme/bloc/theme_event.dart';

part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(
          ThemeState(themeData: appTheme[AppTheme.BlueDark]),
        );

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    if (event is ThemeEvent) {
      emit(ThemeState(themeData: appTheme[event.appTheme]));
    }
  }
}
