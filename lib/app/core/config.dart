class Config {

  static String baseApi = "https://api.igdb.com/v4/";

  static String url(String path, ) {
    return "${Config.baseApi}$path";
  }
}