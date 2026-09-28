import 'package:flutter/material.dart';
import 'package:slot2/data/models/Product.dart';

class ProductWidget extends StatelessWidget {
  final Product product;

  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      child: Column(
        children: [
          Expanded(

              flex: 2,
              child:Stack(
                children:[
                  Container(
                    width:300,
              child: Image.asset(product.image, fit: BoxFit.fill),)])

          ),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              color: Color.White,
              style: ButtonStyle(backgroundColor: WidgetStateProperty),
            ),
          )
          
          Expanded(
            flex: 1,
            child: Card(
              child: Column(
                children: [
                  Expanded(flex:1,child: Text("Name: ${product.name}")),

                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Text("Price: "),
                        Text('Old: ${product.price}', style: TextStyle(color: Colors.blue)),
                        Text('Sale: ${product.price*0.9}', style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                  Expanded(flex: 3,child Schild: Text(textAlign: TextAlign.justify,
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    ); // Thêm dấu chấm phẩy (;) kết thúc lệnh return
  }
}