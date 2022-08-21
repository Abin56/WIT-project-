import 'package:get/get.dart';
import 'package:wit/Model/usermedicine.dart';
import 'package:wit/services/remote_service.dart';

class MedicineControllert extends GetxController {
  @override
  void onInit() {
    fetchProblems();
    super.onInit();
  }

  var problemList = <Problem>[].obs;
  Future<List<Problem>?> fetchProblems() async {
    var problems = await RemoteServices.fetchProblems();
    if (problems != null) {
      problemList.value = problems;
      return problems;
    }
  }
}
