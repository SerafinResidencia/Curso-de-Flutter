import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Cambiar por una instancia de movie
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              const _PosterAndTitle(),
              _Overview(),
              _Overview(),
              _Overview(),
              _Overview(),
              _Overview(),
              CastingCards(),
            ]),
          ),
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar();

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.zero,
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: const Color.fromARGB(150, 0, 0, 0),
          padding: const EdgeInsets.only(bottom: 10),
          child: const Text(
            'movie.title',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        background: const FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://picsum.photos/500/800'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  const _PosterAndTitle();

  @override
  Widget build(BuildContext context) {
    final TextTheme textThem = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Imagen del póster
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage('https://picsum.photos/300/400'),
              height: 150,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 20),

          // Títulos y rating
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'movie.title',
                  style: textThem.headlineMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  'movie.originalTitle',
                  style: textThem.titleMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(
                      Icons.star_border_purple500,
                      size: 15,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 5),
                    Text('movie.voteAverage', style: textThem.bodySmall),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        'Nisi deserunt magna eiusmod magna nulla ipsum do duis ea consectetur dolore commodo veniam.',
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
