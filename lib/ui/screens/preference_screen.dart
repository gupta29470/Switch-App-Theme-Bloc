import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:switch_theme_bloc/ui/theme/app_themes.dart';
import 'package:switch_theme_bloc/ui/theme/bloc/theme_bloc.dart';
import 'package:switch_theme_bloc/ui/theme/bloc/theme_event.dart';

class PreferenceScreen extends StatelessWidget {
  const PreferenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose app theme"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: AppTheme.values.length,
        itemBuilder: (context, index) {
          final currentAppTheme = AppTheme.values[index];
          return Card(
            color: appTheme[currentAppTheme]!.primaryColor,
            child: ListTile(
              title: Text(
                "$currentAppTheme",
                style: TextStyle(
                  color:
                      appTheme[currentAppTheme]!.brightness == Brightness.light
                          ? Colors.black
                          : Colors.white,
                ),
              ),
              onTap: () {
                BlocProvider.of<ThemeBloc>(context).add(
                  ThemeEvent(appTheme: currentAppTheme),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
