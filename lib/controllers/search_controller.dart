import 'dart:convert';

import 'package:bus_tracking_task/models/trap_model.dart';
import 'package:bus_tracking_task/services/api_keys.dart';
import 'package:bus_tracking_task/services/net_service.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  static SearchController get to => Get.find();
  String trapUrl = kServerUrl + "/availabletrips";
  var _dataAvailable = false.obs;
  List<TrapModel> _tripList = <TrapModel>[];
  @override
  void onInit() {
    super.onInit();
    fetchTeps();
  }

  bool get dataAvailable => _dataAvailable.value;
  List<TrapModel> get tripList => _tripList;
  Future<void> fetchTeps() {
    return NetService.fetchJsonData(trapUrl)
        .then((response) {
          List<dynamic> list = jsonDecode(response.body);
          for (dynamic trapModel in list) {
            tripList.add(TrapModel.fromJson(trapModel));
          }
          // if (response != null) _tripList = TrapModel.fromJson(response);
        })
        .catchError((err) => print('Error trip_List !!!!! : $err'))
        .whenComplete(() => _dataAvailable.value = _tripList != null);
  }
}
