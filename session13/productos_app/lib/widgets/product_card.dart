import 'package:flutter/material.dart';
import 'package:productos_app/models/models.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
      child: Container(
        margin: EdgeInsets.only(top: 30, bottom: 50),
        width: double.infinity,
        height: 400,
        decoration: _cardBorders(),
        child: Stack(
          alignment: AlignmentGeometry.bottomLeft,
          children: [
            _BackgroundImage(product.picture),
            _ProductDetails(title: product.name, subTitle: product.id!),

            Positioned(
              top: 0,
              right: 0,
              child: _PriceTag(price: product.price),
            ),

            if (!product.available)
              Positioned(top: 0, left: 0, child: _NotAvailable()),
          ],
        ),
      ),
    );
  }

  BoxDecoration _cardBorders() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25),
      boxShadow: [
        BoxShadow(color: Colors.black12, offset: Offset(0, 7), blurRadius: 10),
      ],
    );
  }
}

class _NotAvailable extends StatelessWidget {
  const _NotAvailable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 70,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 249, 192, 37),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
          child: Text(
            'No disponible',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class _PriceTag extends StatelessWidget {
  final double price;
  const _PriceTag({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 70,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
          child: Text(
            '\$$price',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class _ProductDetails extends StatelessWidget {
  const _ProductDetails({
    super.key,

    required this.subTitle,
    required this.title,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(right: 50),
      child: Container(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        height: 70,
        decoration: _buidBoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(subTitle, style: TextStyle(fontSize: 15, color: Colors.white)),
          ],
        ),
      ),
    );
  }

  BoxDecoration _buidBoxDecoration() {
    return BoxDecoration(
      color: Colors.indigo,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  final String? picture;

  const _BackgroundImage(this.picture, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: double.infinity,
        height: 400,
        child: picture != null
            ? FadeInImage(
                placeholder: AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(picture!),
                fit: BoxFit.cover,
              )
            : Image.asset(
                'assets/no-image.png', // placeholder local en caso de null
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
