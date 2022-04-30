import 'package:armgames/app/modules/home/models/game_response.dart';
import 'package:get/get_connect/connect.dart';

import '../../../core/config.dart';

class HomeProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';

  }

  Future<List<GemeResponse>?> gameListGenarate() async {
    var header = {
      'Client-ID': 'o0xlulc0j0p8qsif70s6r52ogjwsgt',
      'Authorization': 'Bearer xlqg4x07lrxtmtt99cjm41cp3vsqy8'
    };

        final response = await post(
        Config.url("games/",),
          'fields *;',
          headers: header,
        );
        print("aaaaa${response.body}");
        print(response.statusCode);

    if (response.status.hasError) {
      print('if');


      return Future.error(response.statusText!);
    } else {
      print('else');

      return List<GemeResponse>.from(response.body.map((x)=>GemeResponse.fromJson(x)));
    }
  }
}