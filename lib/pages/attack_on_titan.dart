part of 'pages.dart';

class AttackOnTitan extends StatefulWidget {
  const AttackOnTitan({Key? key}) : super(key: key);

  @override
  _AttackOnTitanState createState() => _AttackOnTitanState();
}

class _AttackOnTitanState extends State<AttackOnTitan> {
  FontWeight light = FontWeight.w300;
  FontWeight regular = FontWeight.w400;
  FontWeight medium = FontWeight.w500;
  FontWeight semiBold = FontWeight.w600;
  FontWeight bold = FontWeight.w700;

  TextStyle whiteTextStyle = GoogleFonts.lato().copyWith(
    color: const Color(0xFFFFFFFF),
  );
  TextStyle greyTextStyle = GoogleFonts.lato().copyWith(
    color: const Color(0xFFBBBBBB),
  );
  var tvSeriesList = [
    {
      'imageUrl': 'https://cdn.myanimelist.net/images/anime/1908/120036.jpg',
      'title': 'Demon Slayer: Entertainment District Arc',
      'aired': '2021'
    },
    {
      'imageUrl': 'https://cdn.myanimelist.net/images/anime/1171/109222.jpg',
      'title': 'Jujutsu Kaisen',
      'aired': '2021'
    },
    {
      'imageUrl':
          'https://i.pinimg.com/564x/2e/b5/b3/2eb5b3adb3cbb584d2d5d002e78fd5fd.jpg',
      'title': 'Arcane',
      'aired': '2021'
    },
  ];

  String description =
      'Centuries ago, mankind was slaughtered to near extinction by monstrous humanoid creatures called titans, forcing humans to hide in fear behind enormous concentric walls. What makes these giants truly terrifying is that their taste for human flesh is not born out of hunger but what appears to be out of pleasure. To ensure their survival, the remnants of humanity began living within defensive barriers, resulting in one hundred years without a single titan encounter. However, that fragile calm is soon shattered when a colossal titan manages to breach the supposedly impregnable outer wall, reigniting the fight for survival against the man-eating abominations.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF15141F),
      body: ListView(
        children: [
          SafeArea(
            child: Container(),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 288,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/pic1.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 288 / 2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFF15141F).withOpacity(0),
                            const Color(0xFF15141F).withOpacity(0.7),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                    Container(
                      height: 288 / 2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFF15141F).withOpacity(1),
                            const Color(0xFF15141F).withOpacity(0),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 53,
                left: 37,
                child: Image.asset(
                  'assets/ic_back.png',
                  width: 16,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Attack on Titan: The Final Season Part 2',
                        maxLines: 2,
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: medium,
                        ),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 22.04,
                          width: 29,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFE0E0E0),
                            ),
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                        Container(
                          height: 22.04,
                          width: 29,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                              colors: [
                                const Color(0xFF15141F).withOpacity(0.9),
                                const Color(0xFF15141F).withOpacity(0.2),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          '4K',
                          style: greyTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: regular,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/ic_clock.png',
                          width: 12,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          '23 minutes',
                          style: greyTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/ic_star.png',
                          width: 12,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          '9.07 (MyAnimeList)',
                          style: greyTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Release date',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'January 10, 2022',
                          style: greyTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 47,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Genre',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            genreCard('Action'),
                            const SizedBox(
                              width: 12,
                            ),
                            genreCard('Drama'),
                            const SizedBox(
                              width: 12,
                            ),
                            genreCard('Fantasy'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
                Text(
                  'Synopsis',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ReadMoreText(
                  description,
                  trimLength: 180,
                  trimMode: TrimMode.Length,
                  style: greyTextStyle,
                  trimCollapsedText: 'Read more..',
                  trimExpandedText: 'Read less',
                  moreStyle: whiteTextStyle.copyWith(
                    fontSize: 14,
                  ),
                  lessStyle: whiteTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Related TV Series',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: tvSeriesList
                  .map(
                    (tvSeries) => Container(
                      margin: const EdgeInsets.only(left: 24),
                      child: TVSeriesCard(
                        imageUrl: tvSeries['imageUrl']!,
                        title: tvSeries['title']!,
                        aired: tvSeries['aired']!,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }

  Widget genreCard(String text) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 25,
          width: 60,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color(
                0xFFE0E0E0,
              ),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Container(
          height: 25,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                const Color(0xFF15141F).withOpacity(0.8),
                const Color(0xFF15141F).withOpacity(0.2),
              ],
            ),
          ),
        ),
        Text(
          text,
          style: greyTextStyle.copyWith(
            fontSize: 12,
            fontWeight: regular,
          ),
        ),
      ],
    );
  }
}

class TVSeriesCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String aired;
  const TVSeriesCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.aired,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle greyTextStyle = GoogleFonts.lato().copyWith(
      color: const Color(0xFFBBBBBB),
    );
    TextStyle whiteTextStyle = GoogleFonts.lato().copyWith(
      color: const Color(0xFFFFFFFF),
    );
    return SizedBox(
      width: 142,
      child: Column(
        children: [
          Container(
            width: 142,
            height: 146,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: NetworkImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover),
            ),
            child: Container(
              width: 142,
              height: 146,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          RichText(
            text: TextSpan(text: title, style: whiteTextStyle, children: [
              TextSpan(
                text: ' ($aired)',
                style: greyTextStyle,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
