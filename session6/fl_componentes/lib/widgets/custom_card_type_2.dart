import 'package:fl_componentes/models/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCardType2({super.key, required this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    final bool isNetwork = imageUrl.startsWith('http');

    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 20,
      shadowColor: AppTheme.primary.withValues(alpha: 0.4),
      child: Column(
        children: [
          // ✅ Si la imagen es URL → usa FadeInImage con NetworkImage
          // ✅ Si es local → usa directamente Image.asset
          isNetwork
              ? FadeInImage(
                  image: NetworkImage(imageUrl),
                  placeholder: const AssetImage('assets/jar-loading.gif'),
                  width: double.infinity,
                  height: 230,
                  fit: BoxFit.cover,
                  fadeInDuration: const Duration(milliseconds: 300),
                )
              : Image.asset(
                  imageUrl,
                  width: double.infinity,
                  height: 230,
                  fit: BoxFit.cover,
                ),

          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(
                name!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
