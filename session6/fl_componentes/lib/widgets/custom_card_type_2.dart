import 'package:fl_componentes/models/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(20),
      ),
      elevation: 20,
      shadowColor: AppTheme.primary,
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
              'https://d150u0abw3r906.cloudfront.net/wp-content/uploads/2021/10/image15.png',
            ),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text('Este es un hermoso paisaje.'),
          ),
        ],
      ),
    );
  }
}
