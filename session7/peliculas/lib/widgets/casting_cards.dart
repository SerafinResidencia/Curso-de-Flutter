import 'package:flutter/material.dart';

class CastingCards extends StatelessWidget {
  const CastingCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      width: double.infinity,
      height: 180,
      color: Colors.red,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, int index) => _CastCard(),
      ),
    );
  }
}

class _CastCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 110,
      color: Colors.green,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage('https://picsum.photos/500/800'),
              height: 140,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'actor.name_____',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
