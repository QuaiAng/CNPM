import 'package:chatapp/screens/Login_Screen.dart';
import 'package:flutter/material.dart';

final GlobalKey<FormState> _registerKey = GlobalKey<FormState>();

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isShowingPass = true;
  bool isShowingConfirmPass = true;
  IconData icPass = Icons.visibility_off_outlined;
  IconData icConfirmPass = Icons.visibility_off_outlined;
  TextEditingController passwordControler = TextEditingController();

  bool isValidEmail(String email) {
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(email);
  }

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
          "Đăng ký",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _registerKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 12, left: 12),
            child: Column(
              children: [
                TextFormField(
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "Không được để trống tên";
                      }
                    },
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
                      labelText: "Họ tên",
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
                        return "Không được để trống email";
                      }
                      if (!isValidEmail(value.toString().trim())) {
                        return "Email chưa hợp lệ";
                      }
                    },
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
                      labelText: "Email",
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
                      if (value.toString().isEmpty ||
                          value.toString().length != 10) {
                        return "Số điện thoại chưa hợp lệ";
                      }
                    },
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
                        return "Không được để trống mật khẩu";
                      }
                    },
                    controller: passwordControler,
                    obscureText: isShowingPass,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isShowingPass = !isShowingPass;
                              if (!isShowingPass) {
                                icPass = Icons.visibility_outlined;
                              } else {
                                icPass = Icons.visibility_off_outlined;
                              }
                            });
                          },
                          icon: Icon(
                            icPass,
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
                TextFormField(
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "Mật khẩu không đúng";
                      }
                      if (passwordControler.text != value.toString()) {
                        return "Mật khẩu xác nhận không trùng khớp với mật khẩu đã nhập";
                      }
                    },
                    obscureText: isShowingConfirmPass,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isShowingConfirmPass = !isShowingConfirmPass;
                              if (!isShowingConfirmPass) {
                                icConfirmPass = Icons.visibility_outlined;
                              } else {
                                icConfirmPass = Icons.visibility_off_outlined;
                              }
                            });
                          },
                          icon: Icon(
                            icConfirmPass,
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
                      labelText: "Xác nhận mật khẩu",
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text(
                        "Đã có tài khoản?",
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
                        if (_registerKey.currentState!.validate()) {
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            builder: (context) => Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(16.0),
                              height: MediaQuery.of(context).size.height * 0.4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                    size: 50,
                                  ),
                                  const SizedBox(height: 20),
                                  const Text(
                                    "Đăng ký thành công!",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    "Chúc mừng bạn đã đăng ký thành công. Hãy kiểm tra email của bạn để xác nhận.",
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 20),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.popUntil(
                                          context,
                                          (route) =>
                                              route.settings.name == '/login',
                                        );
                                      },
                                      child: const Text(
                                        "Đóng",
                                        style: TextStyle(color: Colors.amber),
                                      ))
                                ],
                              ),
                            ),
                          );
                        }
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 18),
                        child: Text(
                          "Đăng ký",
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
