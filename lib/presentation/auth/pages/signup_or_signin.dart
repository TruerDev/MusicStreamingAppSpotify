import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_clone_app/common/widgets/button/appbar/app_bar_button.dart';
import 'package:spotify_clone_app/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone_app/core/configs/assets/app_images.dart';
import 'package:spotify_clone_app/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone_app/presentation/auth/pages/signin.dart';
import 'package:spotify_clone_app/presentation/auth/pages/signup.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBarButton(),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Transform.translate(
              offset: const Offset(200, -100),
              child: SvgPicture.asset(
                AppVectors.bottomWavePattern,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Transform.translate(
              offset: const Offset(150, 100),
              child: SvgPicture.asset(
                AppVectors.topWavePattern,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Transform.translate(
              offset: const Offset(-20, 0),
              child: Image.asset(
                AppImages.authBG,
              ),
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppVectors.logo,
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    'Enjoy Listening To Music',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Spotify is a proprietary Swedish audio streaming and media services provider ',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicAppButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => const SignUpPage(),
                              ),
                            );
                          }, 
                          title: 'Register'
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => const SignInPage(),
                              ),
                            );
                          }, 
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: context.isDarkMode ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}