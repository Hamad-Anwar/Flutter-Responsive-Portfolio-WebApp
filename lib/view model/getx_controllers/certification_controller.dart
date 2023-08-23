import 'package:get/get.dart';

class CertificationController extends GetxController{
  RxList<bool> hovers=[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ].obs;
  onHover(int index,bool value){
    hovers[index]=value;
  }
}
