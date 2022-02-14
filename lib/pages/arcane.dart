part of 'pages.dart';

class Arcane extends StatefulWidget {
  const Arcane({Key? key}) : super(key: key);

  @override
  State<Arcane> createState() => _ArcaneState();
}

class _ArcaneState extends State<Arcane> {
  TextStyle whiteTextStyle = GoogleFonts.poppins(
    color: const Color(0xFFFFFFFF),
  );

  TextStyle greyTextStyle = GoogleFonts.poppins(
    color: const Color(0xFFBABFC9),
  );

  FontWeight light = FontWeight.w300;
  FontWeight reguler = FontWeight.w400;
  FontWeight medium = FontWeight.w500;
  FontWeight semiBold = FontWeight.w600;
  FontWeight bold = FontWeight.w700;

  String imageUrl =
      'https://i.pinimg.com/564x/56/17/df/5617df40bfd5dbe7ad21de5bda5c3177.jpg';
  String director = 'Pascal Charrue Arnaud Delord';
  String storyline =
      "The delicate balance between the rich city of Piltover and the seedy underbelly of Zaun. Tensions between these city-states boil over with the creation of hextech a way for any person to control magical energy in Piltover, and in Zaun, a new drug called shimmer transforms humans into monsters. The rivalry between the cities splits families and friends as Arcane brings life to the relationships that shape some of League of Legends' famous champions including Vi, Jinx, Caitlyn, Jayce and Viktor.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1E25),
      body: ListView(
        children: [
          const SafeArea(
            child: SizedBox(),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 26,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Text(
                      'Detail TV Show',
                      style: whiteTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 18,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_border,
                        size: 26,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      alignment: Alignment.bottomCenter,
                      image: NetworkImage(
                        imageUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Arcane',
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      director,
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 14,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                      ),
                      child: Image.asset(
                        'assets/divider.png',
                        width: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Image.asset(
                        'assets/star.png',
                        width: 13,
                      ),
                    ),
                    Text(
                      '9,1',
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    genreCard(
                      'Action',
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    genreCard(
                      'Adventure',
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    genreCard(
                      'Drama',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Storyline',
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ReadMoreText(
                  storyline,
                  trimMode: TrimMode.Length,
                  trimLength: 130,
                  colorClickableText: const Color(0xFF546EE5),
                  trimCollapsedText: 'Read More',
                  trimExpandedText: 'Read less',
                  moreStyle: greyTextStyle.copyWith(
                    color: const Color(0xFF546EE5),
                  ),
                  style: greyTextStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  width: double.infinity,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFF546EE5),
                  ),
                  child: Center(
                    child: Text(
                      'Watch TV Show',
                      style: whiteTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container genreCard(String genre) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFF252932),
      ),
      child: Text(
        genre,
        style: greyTextStyle.copyWith(
          color: const Color(0xFFB2B5BB),
        ),
      ),
    );
  }
}
