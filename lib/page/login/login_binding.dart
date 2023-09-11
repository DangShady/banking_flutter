import 'package:ai_chat_flutter/page/login/login.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController() );
  }
}
