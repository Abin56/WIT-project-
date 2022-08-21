import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:wit/Controller/medicine.dart';
import 'package:wit/Model/usermedicine.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homecontroller = Get.put(MedicineControllert());
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details"),

      ),
      body: SafeArea(
          child: Container(
        child: FutureBuilder(
            future: homecontroller.fetchProblems(),
            builder: (BuildContext, AsyncSnapshot<List<Problem>?> snapshot) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "UserName :   ",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        Text(
                            FirebaseAuth.instance.currentUser!.email.toString())
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Entry Details : ",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        Text(FirebaseAuth
                            .instance.currentUser!.metadata.lastSignInTime
                            .toString()),
                      ],
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          ListTile(
                            title: Text(homecontroller
                                .problemList[0]
                                .diabetes[0]
                                .medications[0]
                                .medicationsClasses[0]
                                .className[0]
                                .associatedDrug[0]
                                .name),
                            subtitle: Text(homecontroller
                                .problemList[0]
                                .diabetes[0]
                                .medications[0]
                                .medicationsClasses[0]
                                .className[0]
                                .associatedDrug[0]
                                .dose),
                          ),
                          ListTile(
                            title: Text(homecontroller
                                .problemList[0]
                                .diabetes[0]
                                .medications[0]
                                .medicationsClasses[0]
                                .className[0]
                                .associatedDrug2[0]
                                .name),
                            subtitle: Text(homecontroller
                                .problemList[0]
                                .diabetes[0]
                                .medications[0]
                                .medicationsClasses[0]
                                .className[0]
                                .associatedDrug2[0]
                                .dose),
                          ),
                          ListTile(
                            title: Text(homecontroller
                                .problemList[0]
                                .diabetes[0]
                                .medications[0]
                                .medicationsClasses[0]
                                .className2[0]
                                .associatedDrug[0]
                                .name),
                            subtitle: Text(homecontroller
                                .problemList[0]
                                .diabetes[0]
                                .medications[0]
                                .medicationsClasses[0]
                                .className2[0]
                                .associatedDrug[0]
                                .dose),
                          ),
                          ListTile(
                            title: Text(homecontroller
                                .problemList[0]
                                .diabetes[0]
                                .medications[0]
                                .medicationsClasses[0]
                                .className2[0]
                                .associatedDrug2[0]
                                .name),
                            subtitle: Text(homecontroller
                                .problemList[0]
                                .diabetes[0]
                                .medications[0]
                                .medicationsClasses[0]
                                .className2[0]
                                .associatedDrug2[0]
                                .strength),
                          ),
                        ],
                      ),
                    )
                  ],
                );
              } else {
                return Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              }
            }),
      )),
    );
  }
}
