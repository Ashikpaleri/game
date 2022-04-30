import 'package:get/get.dart';

import '../models/game_response.dart';
import '../provider/home_provider.dart';

class HomeController extends GetxController {

  RxBool isLoading = false.obs;
  final gameList = <GemeResponse>[].obs;
  GemeResponse? gameitem;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    print('aaa');
    getGames();

  }

  Future<void> getGames() async {
    isLoading(true);
    try {
      final response = await HomeProvider()
          .gameListGenarate();

      gameList.addAll(response!);
      // print(gameList.toJson());



      update();
    } catch (e) {


      isLoading(false);
    } finally {
      isLoading(false);
    }
  }


  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
