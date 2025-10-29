import 'dart:io';

import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, this.url});
  final String? url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 10, top: 10, right: 10),
      child: Container(
        decoration: _buildBoxDecoration(),
        width: double.infinity,
        height: 450,
        child: Opacity(
          opacity: (0.9),
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.only(
              topLeft: Radius.circular(45),
              topRight: Radius.circular(45),
            ),

            child: getImage(url),
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(45),
        topRight: Radius.circular(45),
      ),
      boxShadow: [
        BoxShadow(color: Colors.black45, blurRadius: 10, offset: Offset(0, 5)),
      ],
    );
  }

  Widget getImage(String? picture) {
    if (picture == null) {
      return Image.asset(
        'assets/no-image.png', // placeholder local en caso de null
        fit: BoxFit.cover,
      );
    }
    if (picture.startsWith('http')) {
      return FadeInImage(
        placeholder: AssetImage('assets/jar-loading.gif'),
        image: NetworkImage(picture),
        fit: BoxFit.cover,
      );
    }
    return Image.file(File(picture), fit: BoxFit.cover);
  }
}
