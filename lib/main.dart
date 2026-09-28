import 'data/models/Product.dart'; // Đã sửa lại đường dẫn import theo đúng cấu trúc thư mục

void main() {
  // 1. Tạo Product bằng constructor
  Product product = Product(
    id: 1,
    name: 'iPhone 17',
    quantity: 10,
    price: 25000000.0, // Thêm .0 cho chuẩn kiểu double
    image: 'iphone.jpg',
    description: 'Điện thoại Apple',
  );

  print('=== PRODUCT ===');
  print('ID: ${product.id}');
  print('Name: ${product.name}');
  print('Quantity: ${product.quantity}');
  print('Price: ${product.price}');
  print('Image: ${product.image}');
  print('Description: ${product.description}');

  // 2. Product -> JSON
  Map json = product.toJson();

  print('\n=== TO JSON ===');
  print(json);

  // 3. JSON -> Product
  Product productFromJson = Product.fromJson(json);

  print('\n=== FROM JSON ===');
  print(productFromJson.name);
  print(productFromJson.price);

  // 4. copyTo
  Product newProduct = product.copyTo(
    quantity: 20,
    price: 23000000.0, // Thêm .0 cho chuẩn kiểu double
  );

  print('\n=== COPY TO ===');
  print('Product cũ:');
  print('Quantity: ${product.quantity}');
  print('Price: ${product.price}');

  print('Product mới:');
  print('Quantity: ${newProduct.quantity}');
  print('Price: ${newProduct.price}');
}