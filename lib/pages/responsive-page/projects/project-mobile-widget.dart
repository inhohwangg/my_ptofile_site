import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

projectMobile(controller) {
  return Column(
    children: [
      //* 첫번째 프로젝트
      Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        width: MediaQuery.of(Get.context!).size.width * 0.85,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: VideoPlayer(
                    controller,
                  ),
                ),
              ),
            ),
            Gap(20),
            SizedBox(
              width: double.infinity,
              child: Text(
                'Youtube 음악을 광고없이 다운로드 받기위해 개발한 앱',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Gap(5),
            Divider(),
            // Gap(20),
            // SizedBox(
            //   width: MediaQuery.of(Get.context!).size.width * 0.8,
            //   child: Text(
            //       '시중에있는 Youtube 음악 다운로드 앱들은 다운로드 후 광고를 시청해야합니다.\n저는 광고를 보지않고 듣고싶은 음악이나 동영상을 다운로드받고싶어서 직접 개발하였습니다.'),
            // ),
            // Gap(20),
            // SizedBox(
            //   width: double.infinity,
            //   child: Text(
            //     '사용한 패키지',
            //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            //   ),
            // ),
            Gap(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('별도의 데이터베이스 없이 개발'),
                ),
              ],
            ),
            Gap(8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('웹뷰를 사용하여 유튜브를 실행'),
                ),
              ],
            ),
            Gap(8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('유튜브 동영상을 다운로드 패키지 사용'),
                ),
              ],
            ),
            Gap(8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('다운로드받은 파일 오디오변환, 핸드폰 내부에 저장할 수 있도록 구현'),
                ),
              ],
            ),
            Gap(8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('삼성 뮤직에서 바로 확인할 수 있도록 미디어를 저장한 후 갤러리를 새로 고침 적용'),
                ),
              ],
            ),
            Gap(10),
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  FaIcon(FontAwesomeIcons.github),
                  Gap(10),
                  Text(
                    'https://github.com',
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            Gap(10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                border: Border.all(color: Colors.orange, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                  'flutter_inappwebview, youtube_explode_dart, ffmpeg_kit_flutter, media_scanner'),
            ),
          ],
        ),
      ),
      //* 두번째 프로젝트
      Gap(20),
      Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        width: MediaQuery.of(Get.context!).size.width * 0.85,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: VideoPlayer(
                    controller,
                  ),
                ),
              ),
            ),
            Gap(20),
            SizedBox(
              width: double.infinity,
              child: Text(
                'Youtube 음악을 광고없이 다운로드 받기위해 개발한 앱',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Gap(5),
            Divider(),
            // Gap(20),
            // SizedBox(
            //   width: MediaQuery.of(Get.context!).size.width * 0.8,
            //   child: Text(
            //       '시중에있는 Youtube 음악 다운로드 앱들은 다운로드 후 광고를 시청해야합니다.\n저는 광고를 보지않고 듣고싶은 음악이나 동영상을 다운로드받고싶어서 직접 개발하였습니다.'),
            // ),
            // Gap(20),
            // SizedBox(
            //   width: double.infinity,
            //   child: Text(
            //     '사용한 패키지',
            //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            //   ),
            // ),
            Gap(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('별도의 데이터베이스 없이 개발'),
                ),
              ],
            ),
            Gap(8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('웹뷰를 사용하여 유튜브를 실행'),
                ),
              ],
            ),
            Gap(8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('유튜브 동영상을 다운로드 패키지 사용'),
                ),
              ],
            ),
            Gap(8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('다운로드받은 파일 오디오변환, 핸드폰 내부에 저장할 수 있도록 구현'),
                ),
              ],
            ),
            Gap(8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('삼성 뮤직에서 바로 확인할 수 있도록 미디어를 저장한 후 갤러리를 새로 고침 적용'),
                ),
              ],
            ),
            Gap(10),
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  FaIcon(FontAwesomeIcons.github),
                  Gap(10),
                  Text(
                    'https://github.com',
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            Gap(10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                border: Border.all(color: Colors.orange, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                  'flutter_inappwebview, youtube_explode_dart, ffmpeg_kit_flutter, media_scanner'),
            ),
          ],
        ),
      ),
      //* 세번째 프로젝트
      Gap(20),
      Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        width: MediaQuery.of(Get.context!).size.width * 0.85,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: VideoPlayer(
                    controller,
                  ),
                ),
              ),
            ),
            Gap(20),
            SizedBox(
              width: double.infinity,
              child: Text(
                'Youtube 음악을 광고없이 다운로드 받기위해 개발한 앱',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Gap(5),
            Divider(),
            // Gap(20),
            // SizedBox(
            //   width: MediaQuery.of(Get.context!).size.width * 0.8,
            //   child: Text(
            //       '시중에있는 Youtube 음악 다운로드 앱들은 다운로드 후 광고를 시청해야합니다.\n저는 광고를 보지않고 듣고싶은 음악이나 동영상을 다운로드받고싶어서 직접 개발하였습니다.'),
            // ),
            // Gap(20),
            // SizedBox(
            //   width: double.infinity,
            //   child: Text(
            //     '사용한 패키지',
            //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            //   ),
            // ),
            Gap(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('별도의 데이터베이스 없이 개발'),
                ),
              ],
            ),
            Gap(8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('웹뷰를 사용하여 유튜브를 실행'),
                ),
              ],
            ),
            Gap(8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('유튜브 동영상을 다운로드 패키지 사용'),
                ),
              ],
            ),
            Gap(8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('다운로드받은 파일 오디오변환, 핸드폰 내부에 저장할 수 있도록 구현'),
                ),
              ],
            ),
            Gap(8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('삼성 뮤직에서 바로 확인할 수 있도록 미디어를 저장한 후 갤러리를 새로 고침 적용'),
                ),
              ],
            ),
            Gap(10),
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  FaIcon(FontAwesomeIcons.github),
                  Gap(10),
                  Text(
                    'https://github.com',
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            Gap(10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                border: Border.all(color: Colors.orange, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                  'flutter_inappwebview, youtube_explode_dart, ffmpeg_kit_flutter, media_scanner'),
            ),
          ],
        ),
      ),
      //* 네번째 프로젝트
      Gap(20),
      Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        width: MediaQuery.of(Get.context!).size.width * 0.85,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: VideoPlayer(
                    controller,
                  ),
                ),
              ),
            ),
            Gap(20),
            SizedBox(
              width: double.infinity,
              child: Text(
                'Youtube 음악을 광고없이 다운로드 받기위해 개발한 앱',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Gap(5),
            Divider(),
            // Gap(20),
            // SizedBox(
            //   width: MediaQuery.of(Get.context!).size.width * 0.8,
            //   child: Text(
            //       '시중에있는 Youtube 음악 다운로드 앱들은 다운로드 후 광고를 시청해야합니다.\n저는 광고를 보지않고 듣고싶은 음악이나 동영상을 다운로드받고싶어서 직접 개발하였습니다.'),
            // ),
            // Gap(20),
            // SizedBox(
            //   width: double.infinity,
            //   child: Text(
            //     '사용한 패키지',
            //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            //   ),
            // ),
            Gap(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('별도의 데이터베이스 없이 개발'),
                ),
              ],
            ),
            Gap(8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('웹뷰를 사용하여 유튜브를 실행'),
                ),
              ],
            ),
            Gap(8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('유튜브 동영상을 다운로드 패키지 사용'),
                ),
              ],
            ),
            Gap(8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('다운로드받은 파일 오디오변환, 핸드폰 내부에 저장할 수 있도록 구현'),
                ),
              ],
            ),
            Gap(8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• '), // 점 아이콘 대신 Text로 표시
                Expanded(
                  child: Text('삼성 뮤직에서 바로 확인할 수 있도록 미디어를 저장한 후 갤러리를 새로 고침 적용'),
                ),
              ],
            ),
            Gap(10),
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  FaIcon(FontAwesomeIcons.github),
                  Gap(10),
                  Text(
                    'https://github.com',
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            Gap(10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                border: Border.all(color: Colors.orange, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                  'flutter_inappwebview, youtube_explode_dart, ffmpeg_kit_flutter, media_scanner'),
            ),
          ],
        ),
      ),
    ],
  );
}
