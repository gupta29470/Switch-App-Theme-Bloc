import 'package:flutter/material.dart';
import 'package:switch_theme_bloc/ui/screens/preference_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Home"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => PreferenceScreen(),
                ),
              );
            },
            icon: Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
    );
  }
}
