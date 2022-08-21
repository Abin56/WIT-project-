import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wit/View/Home/home.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({Key? key}) : super(key: key);
  Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print("No User found for that email");
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    //Controllers
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    //
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Login to your App",
              style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 44.0,
            ),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "User Email ",
                prefixIcon: Icon(
                  Icons.mail,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "User Password ",
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 88,
            ),
            SizedBox(
              width: double.infinity,
              child: RawMaterialButton(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                fillColor: Colors.blue,
                elevation: 0.0,
                onPressed: () async {
                  //testing
                  User? user = await loginUsingEmailPassword(
                      email: _emailController.text,
                      password: _passwordController.text,
                      context: context);
                  print(user);
                  if (user != null) {
                    Get.to(ScreenHome());                  }
                  log(FirebaseAuth.instance.currentUser!.metadata.lastSignInTime
                      .toString());
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

// getAlertBox(context) {
//   return showDialog(
//     context: context,
//     builder: (context) => AlertDialog(
//       title: const Text("Loggied Successfully"),
//       shape: const RoundedRectangleBorder(
//           borderRadius: const BorderRadius.all(Radius.circular(10.0))),
//       content: const Text(
//         'Welcome',
//         style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//       ),
//       actions: [
//         Flexible(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   const Text(
//                     "UserName : ",
//                     style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//                   ),
//                   Text(FirebaseAuth.instance.currentUser!.email.toString())
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   const Text(
//                     "Entry Details : ",
//                     style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//                   ),
//                   Text(FirebaseAuth
//                       .instance.currentUser!.metadata.lastSignInTime
//                       .toString())
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   IconButton(onPressed: () {
//                     Get.offAll(ScreenHome());
                  
//                   }, icon: const Text('ok'))
//                 ],
//               )
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }
