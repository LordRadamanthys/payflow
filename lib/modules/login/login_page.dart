import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              color: AppColors.primary,
              height: size.height * 0.36,
              width: size.width,
            ),
            Positioned(
                top: 40,
                left: 0,
                right: 0,
                child: Image.asset(
                  AppImages.person,
                  width: 208,
                  height: 300,
                )),
            Positioned(
              bottom: size.height * 0.18,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logomini),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 70, right: 70, top: 30),
                    child: Text("Organize seu boletos em um só lugar",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.titleHome),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: SocialLoginButton(onTap: (){
                      print("Sei la meu");
                    },),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}