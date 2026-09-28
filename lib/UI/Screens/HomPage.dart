import 'package:flutter/material.dart';
import '../Widgets/MyAppBar.dart';
import '../Widgets/BodyWidgets.dart';

class HomePage extends StatelessWidget {
  final Widget? child;
  final bool darkMode;
  final VoidCallback onToggleDarkMode;

  const HomePage({
    super.key,
    this.child,
    required this.darkMode,
    required this.onToggleDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(darkMode: darkMode, onToggleDarkMode: onToggleDarkMode),
      body: child ?? BodyWidgets(),
    );
  }
}