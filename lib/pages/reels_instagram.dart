part of 'pages.dart';

class ReelsInstagram extends StatefulWidget {
  const ReelsInstagram({Key? key}) : super(key: key);

  @override
  _ReelsInstagramState createState() => _ReelsInstagramState();
}

class _ReelsInstagramState extends State<ReelsInstagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop_2_outlined,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: '',
          ),
        ],
      ),
      body: Column(
        children: [
          SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: PageView(
              scrollDirection: Axis.vertical,
              children: const [
                PageContainer(
                  videoUrl:
                      'https://marketplace.canva.com/EAE0o0xD0As/1/document_810w/canva-lvBxQ7YGwxQ.mp4',
                  imageUserUrl:
                      'https://images.unsplash.com/photo-1644832514335-51b6e61adb1b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
                  username: 'hilmankh__',
                  desc: '4 sehat 5 sempurna',
                  likeCount: '1,234',
                  commentCount: '350',
                ),
                PageContainer(
                  videoUrl:
                      'https://marketplace.canva.com/EAE0o1743-o/1/document_810w/canva-1Q2ZcGZ9GX0.mp4',
                  imageUserUrl:
                      'https://cdn.myanimelist.net/images/voiceactors/1/65609.jpg',
                  username: 'kitoakari',
                  desc: 'ありがとうございます',
                  likeCount: '10,234',
                  commentCount: '1,350',
                ),
                PageContainer(
                  videoUrl:
                      'https://marketplace.canva.com/EAE0pGMLO30/1/document_810w/canva-f6dTdk_LXUs.mp4',
                  imageUserUrl:
                      'https://cdn.myanimelist.net/images/voiceactors/1/66041.jpg',
                  username: 'hayamisaori',
                  desc: 'おはようございます',
                  likeCount: '15,374',
                  commentCount: '750',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PageContainer extends StatefulWidget {
  final String videoUrl;
  final String imageUserUrl;
  final String username;
  final String desc;
  final String likeCount;
  final String commentCount;
  const PageContainer({
    Key? key,
    required this.videoUrl,
    required this.imageUserUrl,
    required this.username,
    required this.desc,
    required this.likeCount,
    required this.commentCount,
  }) : super(key: key);

  @override
  _PageContainerState createState() => _PageContainerState();
}

class _PageContainerState extends State<PageContainer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      widget.videoUrl,
    )..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    _controller.setLooping(true);
    _controller.play();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio + 0.013,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.15),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 14,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Reels',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Icon(
                      Icons.photo_camera_outlined,
                      color: Colors.white,
                      size: 28,
                    ),
                  ],
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              maxRadius: 16,
                              backgroundImage: NetworkImage(
                                widget.imageUserUrl,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              widget.username,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              child: Text(
                                'Follow',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.desc,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.music_note,
                              size: 20,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              'This is Music',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Image.asset(
                              'assets/dot.png',
                              width: 5,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Original Audio',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(
                          Icons.favorite_outline,
                          size: 30,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          widget.likeCount,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Icon(
                          Icons.comment,
                          size: 30,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          widget.commentCount,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Icon(
                          Icons.send,
                          size: 30,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Icon(
                          Icons.more_vert,
                          size: 30,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                widget.imageUserUrl,
                              ),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
