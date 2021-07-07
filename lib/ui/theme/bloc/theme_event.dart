import 'package:equatable/equatable.dart';
import 'package:switch_theme_bloc/ui/theme/app_themes.dart';

class ThemeEvent extends Equatable {
  final AppTheme appTheme;

  ThemeEvent({
    required this.appTheme,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [appTheme];
}
