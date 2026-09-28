import 'package:flutter/material.dart';
// Thay đổi đường dẫn này cho khớp với vị trí file ProductWidget.dart của bạn
import '../Widgets/ProductWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key}); // Thêm key để tối ưu hiệu suất

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("Home Page"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
      body: const Center(
        // Gọi ProductWidget ra đây thay cho Column ảnh và text cũ
        child: ProductWidget(),
      ),
    );
  }
}