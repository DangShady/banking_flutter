import 'package:ai_chat_flutter/constants/app_constant.dart';
import 'package:ai_chat_flutter/constants/image_constant.dart';
import 'package:ai_chat_flutter/helpers/extension/responsive.dart';
import 'package:ai_chat_flutter/page/login/login.dart';
import 'package:ai_chat_flutter/routes/app_pages.dart';
import 'package:ai_chat_flutter/style/app_style.dart';
import 'package:ai_chat_flutter/widget/button_with_icon.dart';
import 'package:ai_chat_flutter/widget/custom_dialog.dart';
import 'package:ai_chat_flutter/widget/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/screen_util.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: BASE_WIDTH, allowFontScaling: true)
      ..init(context);
    return Obx(
      () => Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60.h),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(Icons.arrow_back),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  'Welcome back 👋',
                  style: Style().h3Bold,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'Please enter your email & password to log in.',
                  style: Style().bodyXLargeRegular,
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text('Email', style: Style().bodyLargeBold),
                SizedBox(
                  height: 16.h,
                ),
                TextFormField(
                  style: Style().h5Bold,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    suffixIcon: const Icon(Icons.check_box),
                    hintStyle: Style().h5Bold.copyWith(color: const Color(0xff9E9E9E)),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  'Password',
                  style: Style().bodyLargeBold,
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextFormField(
                  style: Style().h5Bold,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle:
                          Style().h5Bold.copyWith(color: const Color(0XFF9E9E9E)),
                      suffixIcon: Image.asset(
                        ImageConstant.icNoEye,
                        width: 24.w,
                        height: 24.w,
                      )),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          controller.checkBoxed.value =
                              !controller.checkBoxed.value;
                        },
                        child: controller.checkBoxed.value == false
                            ? Image.asset(
                                ImageConstant.icCboxFalse,
                                width: 24.w,
                                height: 24.h,
                              )
                            : Image.asset(
                                ImageConstant.icCboxTrue,
                                width: 24.w,
                                height: 24.h,
                              )),
                    SizedBox(
                      width: 16.h,
                    ),
                    Text(
                      'Remember me',
                      style: Style().bodyLargeSemiBold,
                    ),
                  ],
                ),
                SizedBox(height: 64.h),
                Center(
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.resetpassword);
                      },
                      child: Text('Forgot password?',
                          style: Style().h6Bold.copyWith(
                                color: Style.primaryColor,
                              )),
                    )),
                SizedBox(
                  height: 32.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 85),
                  child: Row(
                    children: [
                      const Text('Don’t have an account?'),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.register);
                        },
                        child: Text('  Sign up',
                            style: Style()
                                .bodyLargeBold
                                .copyWith(color: Style.primaryColor)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                const Row(
                  children: [
                    Expanded(child: Divider()),
                    Text('or continue with'),
                    Expanded(child: Divider()),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconSocal(icon: ImageConstant.icGoogle, onTap: () {  },),
                    SizedBox(
                      width: 16.w,
                    ),
                    IconSocal(icon: ImageConstant.icApple, onTap: () {  },),
                    SizedBox(
                      width: 16.w,
                    ),
                    IconSocal(icon: ImageConstant.icFacebook, onTap: () {  },),
                  ],
                ),
                SizedBox(
                  height: 35.h,
                ),
                RadiusButton(
                  text: 'Log in'.tr,
                  fontSize: 18,
                  isFullWidth: true,
                  maxWidth: double.maxFinite,
                  textColor: Colors.white,
                  backgroundColor: Style.disButton,
                  radius: 100,
                  innerPadding: EdgeInsets.symmetric(vertical: 24.h),
                  onTap: () {
                    customDialog(context,
                        isLoading: controller.isLoading.value,
                        icon: Image.asset(ImageConstant.icLogSuccess),
                        textConfirmColor: Colors.red,
                        text: "Sig Up Successful!");
                    Future.delayed(const Duration(seconds: 1), () {
                      controller.isLoading.value = false;
                      if (controller.isLoading.value == false) {
                        Get.back();
                        Get.toNamed(AppRoutes.home);
                      }
                      // Đóng hộp thoại.
                    });
                  },
                ),
                SizedBox(height: 36.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
