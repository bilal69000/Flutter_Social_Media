import 'package:get/get.dart';

import '../../api/api.dart';
import '../../class/postclass.dart';

class ProfilController extends GetxController {
  RxList<Post> postList = <Post>[].obs;

  @override
  void onInit() async {
    doFetchPost();
    super.onInit();
  }

  doFetchPost() async {
    postList.value = await fetchPost();
    return postList;
  }
}
