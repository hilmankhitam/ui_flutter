part of 'pages.dart';

class JujutsuKaisen extends StatelessWidget {
  const JujutsuKaisen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Column(
        children: [
          const SafeArea(
            child: SizedBox(),
          ),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://cdn.myanimelist.net/images/anime/1121/119044.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 4,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xFF121212).withOpacity(0),
                          const Color(0xFF121212).withOpacity(1),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 30,
                        color: Color(0xFFE50B14),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        size: 30,
                        color: Color(0xFFE50B14),
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                left: 24,
                bottom: 0,
                child: Text(
                  'Jujutsu Kaisen 0 Movie',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 14,
                  ),
                  child: Text(
                    'Yuuta Okkotsu is haunted. Ever since his childhood friend Rika died in a traffic accident, her ghost has stuck with him. But her spirit does not appear as the sweet girl Yuuta once knew. Instead, she manifests as a monstrous and powerful entity who fiercely protects him.',
                    style: TextStyle(
                      color: Color(0xFFCCCCCC),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 16,
                  ),
                  child: Text(
                    'Cast',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  children: [
                    castCard(context, 'Nakamura, Yuuichi',
                        'https://cdn.myanimelist.net/images/voiceactors/2/63264.jpg'),
                    const SizedBox(
                      width: 22,
                    ),
                    castCard(context, 'Hanazawa, Kana',
                        'https://cdn.myanimelist.net/images/voiceactors/3/61259.jpg'),
                    const SizedBox(
                      width: 22,
                    ),
                    castCard(context, 'Ogata, Megumi',
                        'https://cdn.myanimelist.net/images/voiceactors/2/12105.jpg'),
                    const SizedBox(
                      width: 22,
                    ),
                    castCard(context, 'Uchiyama, Kouki',
                        'https://cdn.myanimelist.net/images/voiceactors/1/63405.jpg'),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width - 60,
                      height: 66,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF0000),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          'Buy Ticket',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
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

  Widget castCard(BuildContext context, String name, String imageUrl) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4 - 29,
      child: Column(
        children: [
          SizedBox(
            width: 64,
            height: 64,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                imageUrl,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 9,
            ),
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
