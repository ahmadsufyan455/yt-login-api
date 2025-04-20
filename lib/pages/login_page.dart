import 'package:flutter/material.dart';
import 'package:flutter_auth_login_api/routes.dart';
import 'package:flutter_auth_login_api/widgets/auth_button.dart';
import 'package:flutter_auth_login_api/widgets/login_textfield.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final paswordController = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/images/login_image.svg',
                  height: 400,
                  semanticsLabel: 'Login Image',
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 34),
                LoginTextfield(
                  labelText: 'Username',
                  controller: usernameController,
                  keyboardType: TextInputType.text,
                  inputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),
                LoginTextfield(
                  labelText: 'Password',
                  controller: paswordController,
                  keyboardType: TextInputType.visiblePassword,
                  inputAction: TextInputAction.done,
                  isObscure: isObscure,
                  hasSuffix: true,
                  onSuffixPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                ),
                const SizedBox(height: 34),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  child: AuthButton(
                    labelText: 'Login',
                    onPressed:
                        () => Navigator.pushReplacementNamed(
                          context,
                          MyRoute.home.name,
                        ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Don\'t have an account ?',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    usernameController.dispose();
    paswordController.dispose();
    super.dispose();
  }
}
