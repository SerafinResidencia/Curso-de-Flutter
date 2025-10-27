import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 10, top: 10, right: 10),
      child: Container(
        decoration: _buildBoxDecoration(),
        width: double.infinity,
        height: 450,
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.only(
            topLeft: Radius.circular(45),
            topRight: Radius.circular(45),
          ),
          child: FadeInImage(
            placeholder: NetworkImage(
              'https://via.placeholder.com/400x300/green',
            ),
            image: AssetImage('assets/jar-loading.gif'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(45),
        topRight: Radius.circular(45),
      ),
      boxShadow: [
        BoxShadow(color: Colors.black45, blurRadius: 10, offset: Offset(0, 5)),
      ],
    );
  }
}
