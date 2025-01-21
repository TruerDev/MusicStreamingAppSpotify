import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone_app/common/widgets/button/appbar/app_bar_button.dart';
import 'package:spotify_clone_app/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone_app/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone_app/presentation/auth/pages/signup.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signInText(context),
      appBar: BasicAppBarButton(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 30,
          width: 30,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            SizedBox(height: 50,),
            _usernameOrEmailField(context),
            SizedBox(height: 20,),
            _passwordField(context),
            SizedBox(height: 30,),
            BasicAppButton(
              onPressed: (){}, 
              title: 'Sign In'
            ),
          ],
        ),
      ),
    );
  }
  Widget _registerText() {
    return const Text(
      'Sign In',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _usernameOrEmailField(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Username Or Email',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Password',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _signInText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Not a member?',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          TextButton(
            onPressed: (){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const SignUpPage(),
                ),
              );
            }, 
            child: Text(
              'Register Now'
            )
          )
        ],
      ),
    );
  }
}