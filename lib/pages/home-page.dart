import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  bool _isGitHubHovered = false;
  bool _isTistoryHovered = false;
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _aboutMeKey = GlobalKey();
  final GlobalKey _projectKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _archiveKey = GlobalKey();

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
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Container(
        //     padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        //     child: Text(
        //       '황인호 포트폴리오',
        //       style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
        //     ),
        //   ),
        //   actions: [
        //     Container(
        //       padding: EdgeInsets.symmetric(horizontal: 5),
        //       decoration: BoxDecoration(
        //           border: Border.all(width: 1, color: Colors.grey[300]!)),
        //       margin: EdgeInsets.only(right: 10, top: 5),
        //       child: IconButton(
        //         onPressed: () {},
        //         icon: Icon(
        //           Icons.menu,
        //           size: 30,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
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
                  key: _projectKey,
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
                                _projectKey.currentContext!,
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
                            'Projects',
                            style: GoogleFonts.jua(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
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
              Text(
                'Skills',
                style: GoogleFonts.jua(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                    child: Column(
                      children: [
                        Text(
                          'OS',
                          style: GoogleFonts.jua(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('assets/logo/debian.png',
                            width: 150, height: 150),
                        Image.asset('assets/logo/ubuntu.png',
                            width: 150, height: 150),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Column(
                      children: [
                        Text(
                          'Version Control',
                          style: GoogleFonts.jua(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('assets/logo/git.png',
                            width: 150, height: 150),
                        Image.asset('assets/logo/github.png',
                            width: 150, height: 150),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                    child: Column(
                      children: [
                        Text(
                          'Mobile App',
                          style: GoogleFonts.jua(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('assets/logo/flutter.png',
                            width: 150, height: 150),
                        Image.asset('assets/logo/dart.png',
                            width: 150, height: 150),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                    child: Column(
                      children: [
                        Text(
                          'Frontend',
                          style: GoogleFonts.jua(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('assets/logo/htmlcssjs.png',
                            width: 150, height: 150),
                        // Image.asset('assets/logo/ubuntu.png',width: 150,height: 150),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                    child: Column(
                      children: [
                        Text(
                          'Backend',
                          style: GoogleFonts.jua(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('assets/logo/node.png',
                            width: 150, height: 150),
                        Image.asset('assets/logo/pocketbase.png',
                            width: 150, height: 150),
                        Image.asset('assets/logo/postgresql.png',
                            width: 150, height: 150),
                        Image.asset('assets/logo/mongodb.png',
                            width: 150, height: 150),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                    child: Column(
                      children: [
                        Text(
                          'Deployment',
                          style: GoogleFonts.jua(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('assets/logo/laptop.png',
                            width: 150, height: 150),
                        Image.asset('assets/logo/docker.png',
                            width: 150, height: 150),
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.person,
                      size: 40,
                    ),
                    SizedBox(width: 25), // 아이콘과 텍스트 간의 간격
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '이름',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '황인호',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.at,
                      size: 40,
                    ),
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '이메일',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'sk1440sk@naver.com',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.call,
                      size: 40,
                    ),
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '연락처',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '010-2540-6481',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
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
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                                style: GoogleFonts.jua(fontSize: 40)),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'https://github.com',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 15,
                        ),
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
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                                style: GoogleFonts.jua(fontSize: 40)),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'https://tistory.com',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '공부한 내용을 기록하는 공간입니다.',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ],
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
