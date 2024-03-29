import 'package:ai_chat_flutter/lang/vi_vn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'en_us.dart';

class TranslationService extends Translations {
  static final locale = Get.deviceLocale;
  static const fallbackLocale = Locale('vi', 'VN');

  @override
  Map<String, Map<String, String>> get keys => {
        'vi_VN': viVN,
        'en_US': enUS,
      };
}
