// To parse this JSON data, do
//
//     final gemeResponse = gemeResponseFromJson(jsonString);

import 'dart:convert';

List<GemeResponse> gemeResponseFromJson(String str) => List<GemeResponse>.from(json.decode(str).map((x) => GemeResponse.fromJson(x)));

String gemeResponseToJson(List<GemeResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GemeResponse {
  GemeResponse({
    this.id,
    this.category,
    this.cover,
    this.createdAt,
    this.externalGames,
    this.firstReleaseDate,
    this.gameModes,
    this.genres,
    this.name,
    this.platforms,
    this.releaseDates,
    this.screenshots,
    this.similarGames,
    this.slug,
    this.status,
    this.summary,
    this.tags,
    this.themes,
    this.updatedAt,
    this.url,
    this.websites,
    this.checksum,
    this.ageRatings,
    this.involvedCompanies,
    this.alternativeNames,
    this.parentGame,
    this.gameEngines,
    this.keywords,
    this.playerPerspectives,
  });

  int ? id;
  int ? category;
  int ? cover;
  int ? createdAt;
  List<int> ? externalGames;
  int ? firstReleaseDate;
  List<int> ? gameModes;
  List<int> ? genres;
  String ? name;
  List<int> ? platforms;
  List<int> ? releaseDates;
  List<int> ? screenshots;
  List<int> ? similarGames;
  String ? slug;
  int ? status;
  String ? summary;
  List<int> ? tags;
  List<int> ? themes;
  int ? updatedAt;
  String ? url;
  List<int> ? websites;
  String ? checksum;
  List<int> ? ageRatings;
  List<int> ? involvedCompanies;
  List<int> ? alternativeNames;
  int ? parentGame;
  List<int> ? gameEngines;
  List<int> ? keywords;
  List<int> ? playerPerspectives;

  factory GemeResponse.fromJson(Map<String, dynamic> json) => GemeResponse(
    id: json["id"],
    category: json["category"],
    cover: json["cover"] == null ? null : json["cover"],
    createdAt: json["created_at"],
    externalGames: List<int>.from(json["external_games"].map((x) => x)),
    firstReleaseDate: json["first_release_date"] == null ? null : json["first_release_date"],
    gameModes: json["game_modes"] == null ? null : List<int>.from(json["game_modes"].map((x) => x)),
    genres: json["genres"] == null ? null : List<int>.from(json["genres"].map((x) => x)),
    name: json["name"],
    platforms: json["platforms"] == null ? null : List<int>.from(json["platforms"].map((x) => x)),
    releaseDates: json["release_dates"] == null ? null : List<int>.from(json["release_dates"].map((x) => x)),
    screenshots: json["screenshots"] == null ? null : List<int>.from(json["screenshots"].map((x) => x)),
    similarGames: json["similar_games"] == null ? null : List<int>.from(json["similar_games"].map((x) => x)),
    slug: json["slug"],
    status: json["status"] == null ? null : json["status"],
    summary: json["summary"] == null ? null : json["summary"],
    tags: json["tags"] == null ? null : List<int>.from(json["tags"].map((x) => x)),
    themes: json["themes"] == null ? null : List<int>.from(json["themes"].map((x) => x)),
    updatedAt: json["updated_at"],
    url: json["url"],
    websites: json["websites"] == null ? null : List<int>.from(json["websites"].map((x) => x)),
    checksum: json["checksum"],
    ageRatings: json["age_ratings"] == null ? null : List<int>.from(json["age_ratings"].map((x) => x)),
    involvedCompanies: json["involved_companies"] == null ? null : List<int>.from(json["involved_companies"].map((x) => x)),
    alternativeNames: json["alternative_names"] == null ? null : List<int>.from(json["alternative_names"].map((x) => x)),
    parentGame: json["parent_game"] == null ? null : json["parent_game"],
    gameEngines: json["game_engines"] == null ? null : List<int>.from(json["game_engines"].map((x) => x)),
    keywords: json["keywords"] == null ? null : List<int>.from(json["keywords"].map((x) => x)),
    playerPerspectives: json["player_perspectives"] == null ? null : List<int>.from(json["player_perspectives"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "category": category,
    "cover": cover == null ? null : cover,
    "created_at": createdAt,
    "external_games": List<dynamic>.from(externalGames!.map((x) => x)),
    "first_release_date": firstReleaseDate == null ? null : firstReleaseDate,
    "game_modes": gameModes == null ? null : List<dynamic>.from(gameModes!.map((x) => x)),
    "genres": genres == null ? null : List<dynamic>.from(genres!.map((x) => x)),
    "name": name,
    "platforms": platforms == null ? null : List<dynamic>.from(platforms!.map((x) => x)),
    "release_dates": releaseDates == null ? null : List<dynamic>.from(releaseDates!.map((x) => x)),
    "screenshots": screenshots == null ? null : List<dynamic>.from(screenshots!.map((x) => x)),
    "similar_games": similarGames == null ? null : List<dynamic>.from(similarGames!.map((x) => x)),
    "slug": slug,
    "status": status == null ? null : status,
    "summary": summary == null ? null : summary,
    "tags": tags == null ? null : List<dynamic>.from(tags!.map((x) => x)),
    "themes": themes == null ? null : List<dynamic>.from(themes!.map((x) => x)),
    "updated_at": updatedAt,
    "url": url,
    "websites": websites == null ? null : List<dynamic>.from(websites!.map((x) => x)),
    "checksum": checksum,
    "age_ratings": ageRatings == null ? null : List<dynamic>.from(ageRatings!.map((x) => x)),
    "involved_companies": involvedCompanies == null ? null : List<dynamic>.from(involvedCompanies!.map((x) => x)),
    "alternative_names": alternativeNames == null ? null : List<dynamic>.from(alternativeNames!.map((x) => x)),
    "parent_game": parentGame == null ? null : parentGame,
    "game_engines": gameEngines == null ? null : List<dynamic>.from(gameEngines!.map((x) => x)),
    "keywords": keywords == null ? null : List<dynamic>.from(keywords!.map((x) => x)),
    "player_perspectives": playerPerspectives == null ? null : List<dynamic>.from(playerPerspectives!.map((x) => x)),
  };
}
