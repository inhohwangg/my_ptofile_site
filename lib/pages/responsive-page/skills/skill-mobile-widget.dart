import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_profile_site/util/g_size.dart';

class SkillMobileWidget extends StatelessWidget {
  const SkillMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                constraints: BoxConstraints(
                  maxWidth: 45.w,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Column(
                  children: [
                    Text(
                      'OS',
                      style: GoogleFonts.jua(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gap(10),
                    Image.asset(
                      'assets/logo/debian.png',
                      width: 25.w,
                      height: 25.h,
                    ),
                    Gap(10),
                    Image.asset(
                      'assets/logo/ubuntu.png',
                      width: 25.w,
                      height: 25.h,
                    ),
                  ],
                ),
              ),
              Gap(30),
              Container(
                constraints: BoxConstraints(
                  maxWidth: 45.w, // 최대 너비를 설정합니다.
                  // maxHeight: 500, // 최대 높이를 설정합니다.
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Version Control',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.jua(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gap(10),
                    Image.asset(
                      'assets/logo/git.png',
                      width: 25.w,
                      height: 25.h,
                    ),
                    Gap(10),
                    Image.asset(
                      'assets/logo/github.png',
                      width: 25.w,
                      height: 25.h,
                    ),
                  ],
                ),
              ),
              Gap(30),
              Container(
                constraints: BoxConstraints(
                  maxWidth: 45.w, // 최대 너비를 설정합니다.
                  // maxHeight: 500, // 최대 높이를 설정합니다.
                ),
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
                    Gap(10),
                    Image.asset(
                      'assets/logo/html.png',
                      width: 20.w,
                      height: 20.h,
                    ),
                    Gap(10),
                    Image.asset(
                      'assets/logo/css.png',
                      width: 20.w,
                      height: 20.h,
                    ),
                    Gap(10),
                    Image.asset(
                      'assets/logo/javascript.png',
                      width: 20.w,
                      height: 20.h,
                    ),
                  ],
                ),
              ),
              Gap(30),
              Container(
                constraints: BoxConstraints(
                  maxWidth: 45.w, // 최대 너비를 설정합니다.
                  // maxHeight: 500, // 최대 높이를 설정합니다.
                ),
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
                    Gap(10),
                    Image.asset(
                      'assets/logo/flutter.png',
                      width: 20.w,
                      height: 20.h,
                    ),
                    Gap(10),
                    Image.asset(
                      'assets/logo/dart.png',
                      width: 20.w,
                      height: 20.h,
                    ),
                  ],
                ),
              ),
              Gap(30),
              Container(
                constraints: BoxConstraints(
                  maxWidth: 45.w, // 최대 너비를 설정합니다.
                  // maxHeight: 500, // 최대 높이를 설정합니다.
                ),
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
                    Gap(10),
                    Image.asset(
                      'assets/logo/nodejs.png',
                      width: 20.w,
                      height: 20.h,
                    ),
                    Gap(10),
                    Image.asset(
                      'assets/logo/pocketbase.png',
                      width: 20.w,
                      height: 20.h,
                    ),
                    Gap(10),
                    Image.asset(
                      'assets/logo/postgresql.png',
                      width: 20.w,
                      height: 20.h,
                    ),
                    Gap(10),
                    Image.asset(
                      'assets/logo/mongodb.png',
                      width: 20.w,
                      height: 20.h,
                    ),
                  ],
                ),
              ),
              Gap(30),
              Container(
                constraints: BoxConstraints(
                  maxWidth: 45.w, // 최대 너비를 설정합니다.
                  // maxHeight: 500, // 최대 높이를 설정합니다.
                ),
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
                    Gap(10),
                    Image.asset(
                      'assets/logo/laptop.png',
                      width: 20.w,
                      height: 20.h,
                    ),
                    Gap(10),
                    Image.asset(
                      'assets/logo/docker.png',
                      width: 20.w,
                      height: 20.h,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
