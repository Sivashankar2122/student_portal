import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    Key? key,
    required this.isLogin,
    required this.animationDuration,
    required this.size,
    required this.defaultLoginSize,
  }) : super(key: key);

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isLogin ? 0.0 : 1.0,
      duration: animationDuration * 5,
      child: Visibility(
        visible: !isLogin,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: size.width,
            height: defaultLoginSize,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Welcome',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  const SizedBox(height: 40),
                  SvgPicture.asset('assets/images/register.svg'),
                  const SizedBox(height: 40),
                  const TextField(
                    cursorColor: Colors.purple,
                    decoration: InputDecoration(
                        icon: Icon(Icons.abc, color: Colors.purple),
                        hintText: 'Hint',
                        border: InputBorder.none),
                  ),
                  const TextField(
                    cursorColor: Colors.purple,
                    decoration: InputDecoration(
                        icon: Icon(Icons.abc, color: Colors.purple),
                        hintText: 'Hint',
                        border: InputBorder.none),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.purple),
                    child: const TextField(
                      cursorColor: Colors.purple,
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock, color: Colors.purple),
                          hintText: 'hint',
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.purple),
                    child: const TextField(
                      cursorColor: Colors.purple,
                      decoration: InputDecoration(
                          icon: Icon(Icons.abc, color: Colors.purple),
                          hintText: 'Hint',
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
