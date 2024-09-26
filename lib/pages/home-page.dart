import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

import '../controllers/home-page-controller.dart';
import 'responsive-page/aboutMe/about-mobile-widget.dart';
import 'responsive-page/aboutMe/about-tablet-widget.dart';
import 'responsive-page/aboutMe/about-web-widget.dart';
import 'responsive-page/skills/skill-mobile-widget.dart';
import 'responsive-page/skills/skill-tablet-widget.dart';
import 'responsive-page/skills/skill-web-widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  HomePageController controller = Get.put(HomePageController());
  bool _isGitHubHovered = false;
  bool _isTistoryHovered = false;
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _aboutMeKey = GlobalKey();
  final GlobalKey _projectKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _archiveKey = GlobalKey();
  late VideoPlayerController videoPlayerController;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToAboutMe() {
    final RenderBox renderBox =
        _aboutMeKey.currentContext!.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero).dy;

    _scrollController.animateTo(
      position - kToolbarHeight, // AppBar 높이만큼 뺍니다.
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  void didChangeDependencies() {
    // 실시간으로 변경되는 값들
    super.didChangeDependencies();
    controller.webSize.value = MediaQuery.of(context).size.width as int;
  }

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      ),
      videoPlayerOptions: VideoPlayerOptions(
        webOptions: VideoPlayerWebOptions(
          controls: VideoPlayerWebOptionsControls.enabled(),
        ),
      ),
    )..initialize().then((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              '황인호 포트폴리오',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
            ),
          ),
          actions: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey[300]!)),
              margin: EdgeInsets.only(right: 10, top: 5),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: ResponsiveRowColumn(
            layout: ResponsiveRowColumnType.COLUMN,
            children: [
              ResponsiveRowColumnItem(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: double.infinity,
                  height: 400,
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter:
                          ColorFilter.mode(Colors.grey[600]!, BlendMode.darken),
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/laptop-1839876_1920.jpg',
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '- 황인호 -',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        '안녕하세요',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '호기심 많고 성장 진행중인 개발자입니다.',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      InkWell(
                        onTap: () {
                          Scrollable.ensureVisible(
                            _aboutMeKey.currentContext!,
                            duration: Duration(seconds: 1),
                            curve: Curves.easeInOut,
                            alignment: 0.0, // 0.0은 최상단, 1.0은 최하단
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[700],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Text(
                            '더 알아보기 ↓',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ResponsiveRowColumnItem(child: aboutMe()),
              ResponsiveRowColumnItem(
                child: skills(),
              ),
              ResponsiveRowColumnItem(child: archive()),
              ResponsiveRowColumnItem(
                child: Container(
                  color: Colors.blue[400],
                  key: _projectKey,
                  // margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.symmetric(
                    vertical: 30,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Scrollable.ensureVisible(
                                _projectKey.currentContext!,
                                duration: Duration(seconds: 1),
                                curve: Curves.easeInOut,
                                alignment: 0.0, // 0.0은 최상단, 1.0은 최하단
                              );
                            },
                            child: FaIcon(
                              FontAwesomeIcons.link,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Projects',
                            style: GoogleFonts.jua(
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                        width: MediaQuery.of(context).size.width * 0.85,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'YouTube 다운로드',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black,
                                      ),
                                      width: 300,
                                      height: 300,
                                      child: VideoPlayer(
                                        videoPlayerController,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Flexible(
                                  child: Column(
                                    children: [
                                      Text(
                                        '시중에있는 Youtube 음악 다운로드 앱들은 다운로드 후 광고를 시청해야합니다.\n',
                                        overflow: TextOverflow.visible,
                                        maxLines: null,
                                        softWrap: true,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        '광고를 보지않고 듣고싶은 음악이나 동영상을 다운로드받고싶어서 직접 개발하였습니다.',
                                        overflow: TextOverflow.visible,
                                        maxLines: null,
                                        softWrap: true,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Divider(
                                        color: Colors.grey[500],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      // 주요기능 , GitHub , 패키지
                                      Row(
                                        children: [
                                          Text(
                                            '주요 기능',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Flexible(
                                            child: Text(
                                              '선택한 동영상/오디오 링크 추출 , youtube_explode_dart 패키지를 사용하여 동영상 추출, 비디오를 오디오로 전환, 다운로드 퍼센트 표시',
                                              maxLines: null,
                                              softWrap: true,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'GitHub',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Flexible(
                                            child: Text(
                                              'https://github.com',
                                              maxLines: null,
                                              softWrap: true,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Package',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Flexible(
                                            child: Text(
                                              'youtube_explode_dart,flutter_inappwebview,ffmpeg_kit_flutter_audio,path_provider',
                                              maxLines: null,
                                              softWrap: true,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '개발인원',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Flexible(
                                            child: Text(
                                              '1인 개발',
                                              maxLines: null,
                                              softWrap: true,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '개발기간',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Flexible(
                                            child: Text(
                                              '2주',
                                              maxLines: null,
                                              softWrap: true,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  skills() {
    return Container(
      color: Colors.amber[200],
      key: _skillsKey,
      // margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 30,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Scrollable.ensureVisible(
                    _skillsKey.currentContext!,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    alignment: 0.0, // 0.0은 최상단, 1.0은 최하단
                  );
                },
                child: FaIcon(
                  FontAwesomeIcons.link,
                  size: 40,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  print(MediaQuery.of(context).size.width);
                },
                child: Text(
                  'Skills',
                  style: GoogleFonts.jua(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          if (controller.webSize < 769)
            SkillMobileWidget()
          else if (controller.webSize > 769 && controller.webSize < 1549)
            SkillTabletWidget()
          else if (controller.webSize > 1549)
            SkillWebWidget(),
        ],
      ),
    );
  }

  aboutMe() {
    return Container(
      key: _aboutMeKey,
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Scrollable.ensureVisible(
                    _aboutMeKey.currentContext!,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    alignment: 0.0, // 0.0은 최상단, 1.0은 최하단
                  );
                },
                child: FaIcon(
                  FontAwesomeIcons.link,
                  size: 40,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'About Me',
                style: GoogleFonts.jua(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
                // style: TextStyle(
                //     fontSize: 45, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          if (controller.webSize < 769)
            AboutMobileWidget()
          else if (controller.webSize > 769 && controller.webSize < 1549)
            AboutTabletWidget()
          else if (controller.webSize > 1549)
            AboutWebWidget(),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }

  archive() {
    return Container(
      height: 400,
      color: Colors.black,
      key: _archiveKey,
      // margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Scrollable.ensureVisible(
                    _archiveKey.currentContext!,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    alignment: 0.0, // 0.0은 최상단, 1.0은 최하단
                  );
                },
                child: FaIcon(
                  FontAwesomeIcons.link,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Archiving',
                style: GoogleFonts.jua(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MouseRegion(
                onHover: (event) {
                  setState(() {
                    _isGitHubHovered = true;
                  });
                },
                onExit: (event) => setState(() => _isGitHubHovered = false),
                child: TweenAnimationBuilder(
                  duration: Duration(milliseconds: 200),
                  tween: Tween(begin: 1.0, end: _isGitHubHovered ? 1.1 : 1.0),
                  curve: Curves.bounceInOut,
                  builder: (context, scale, child) {
                    return Transform.scale(
                      scale: scale,
                      child: child,
                    );
                  },
                  child: GestureDetector(
                    onTap: () async {
                      await launchUrl(
                          Uri.parse('https://github.com/inhohwangg'));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.github,
                                size: 50,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text('GitHub',
                                  style: GoogleFonts.jua(fontSize: 30)),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          // Text(
                          //   'https://github.com/inhohwangg',
                          //   style: TextStyle(
                          //       fontSize: 20, fontWeight: FontWeight.w600),
                          // ),
                          // SizedBox(
                          //   height: 15,
                          // ),
                          Text(
                            '소스코드를 저장하는 공간입니다.',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              MouseRegion(
                onHover: (event) {
                  setState(() {
                    _isTistoryHovered = true;
                  });
                },
                onExit: (event) => setState(() => _isTistoryHovered = false),
                child: TweenAnimationBuilder(
                  duration: Duration(milliseconds: 200),
                  tween: Tween(begin: 1.0, end: _isTistoryHovered ? 1.1 : 1.0),
                  curve: Curves.bounceInOut,
                  builder: (context, scale, child) {
                    return Transform.scale(
                      scale: scale,
                      child: child,
                    );
                  },
                  child: GestureDetector(
                    onTap: () async {
                      await launchUrl(
                          Uri.parse('https://inho-dev.tistory.com/'));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/tistory.png',
                                width: 50,
                                height: 50,
                                color: Color(0xFFFF5722),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text('TISTORY',
                                  style: GoogleFonts.jua(
                                    fontSize: 23,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          // Text(
                          //   'https://inho-dev.tistory.com/',
                          //   style: TextStyle(
                          //       fontSize: 20, fontWeight: FontWeight.w600),
                          // ),
                          // SizedBox(
                          //   height: 15,
                          // ),
                          Text(
                            '공부내용을 기록하는 공간입니다.',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
