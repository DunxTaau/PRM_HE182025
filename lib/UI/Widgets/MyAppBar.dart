import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool darkMode;
  final VoidCallback onToggleDarkMode;

  const MyAppBar({super.key, required this.darkMode, required this.onToggleDarkMode});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text('My Flutter App'),
      actions: [
        IconButton(
          onPressed: onToggleDarkMode,
          icon: Icon(darkMode ? Icons.dark_mode : Icons.light_mode),
        ),
      ],
    );
  }

  // Bắt buộc phải có đoạn này khi implements PreferredSizeWidget
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}