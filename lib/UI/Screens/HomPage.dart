import 'package:flutter/material.dart';
import '../Widgets/MyAppBar.dart';
import '../Widgets/BodyWidgets.dart'; // Đảm bảo tên file này đúng với file bạn đang có
import 'core_widgets.dart';
import 'input_controls.dart';

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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Text(
                'Lab 4 - Flutter UI',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Trang chủ (Sản phẩm)'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.widgets),
              title: const Text('Bài 1: Core Widgets Demo'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CoreWidgetsDemo()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.tune),
              title: const Text('Bài 2: Input Controls Demo'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const InputControlsDemo()),
                );
              },
            ),
          ],
        ),
      ),
      // Gọi đúng tên class BodyWidgets đã được thống nhất ở các bước trước
      body: child ?? BodyWidgets(),
    );
  }
}