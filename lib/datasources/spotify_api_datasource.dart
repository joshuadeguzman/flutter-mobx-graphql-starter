import 'package:flutter_mobx_graphql/models/models.dart';

abstract class ISpotifyApiDataSource {
  Future<List<Artist>> getArtists(String name);
}

class SpotifyApiDataSource implements ISpotifyApiDataSource {
  SpotifyApiDataSource(this._client);
  final GraphQLClient _client;

  @override
  Future<List<Artist>> getArtists(String name) async {
    try {
      /// TODO: Add the [String] query here

      /// TODO: Add [QueryOptions]
      final response = null;

      if (response.hasException) {
        throw response.exception;
      }

      final data = Data.fromJson(response.data);
      return data.queryArtists;
    } catch (e) {
      throw e;
    }
  }
}
