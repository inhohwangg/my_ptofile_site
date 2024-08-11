import 'package:get/get.dart' hide ScreenType;

extension DoubleExtenions on num {
  double get w => this * Get.mediaQuery.size.width / 100;
  double get h => this * Get.mediaQuery.size.height / 100;
}
