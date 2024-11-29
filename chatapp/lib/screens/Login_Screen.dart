import 'package:flutter/material.dart';

final GlobalKey<FormState> _loginKey = GlobalKey<FormState>();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isShowing = true;
  IconData ic = Icons.visibility_off_outlined;
  String sdt = "0123456789";
  String pw = "1234";
  TextEditingController phoneNumberControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        title: const Text(
          "Đăng nhập",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _loginKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 12, left: 12),
            child: Column(
              children: [
                TextFormField(
                    validator: (value) {
                      if (value.toString().isEmpty ||
                          value.toString().length != 10) {
                        return "Số điện thoại chưa hợp lệ";
                      }
                    },
                    controller: phoneNumberControler,
                    decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 0.8,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Colors.amber,
                          width: 0.8,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Colors.amber,
                          width: 0.8,
                        ),
                      ),
                      labelText: "Số điện thoại",
                      labelStyle:
                          const TextStyle(color: Colors.grey, fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Colors.amber,
                          width: 0.8,
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "Không được để trống số điện thoại";
                      }
                    },
                    controller: passwordControler,
                    obscureText: isShowing,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isShowing = !isShowing;
                              if (!isShowing) {
                                ic = Icons.visibility_outlined;
                              } else {
                                ic = Icons.visibility_off_outlined;
                              }
                            });
                          },
                          icon: Icon(
                            ic,
                            color: Colors.grey,
                          )),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 0.8,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Colors.amber,
                          width: 0.8,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Colors.amber,
                          width: 0.8,
                        ),
                      ),
                      labelText: "Mật khẩu",
                      labelStyle:
                          const TextStyle(color: Colors.grey, fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Colors.amber,
                          width: 0.8,
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "Quên mật khẩu",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.amber,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: const Text(
                        "Chưa có tài khoản?",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.amber,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {
                        if (_loginKey.currentState!.validate() &&
                            phoneNumberControler.text == sdt &&
                            passwordControler.text == pw) {
                          Navigator.pushNamed(context, '/home');
                        }
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 18),
                        child: Text(
                          "Đăng nhập",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
