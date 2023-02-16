import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:dotenv/dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;

class QuoteService {
  DotEnv env = DotEnv(includePlatformEnvironment: true)..load();
  void getQuote() async {
    String tokenPath =
        path.join(Directory.current.path, 'assets', 'auth_bearer_token.txt');
    var token = await File(tokenPath).readAsString();

    final url = Uri.parse('https://the-one-api.dev/v2/quote');
    final res = await http
        .get(url, headers: {HttpHeaders.authorizationHeader: 'Bearer $token'});

    final data = jsonDecode(res.body) as Map<String, dynamic>;
    print(data['docs'][1]['dialog']);
  }

  void getQuoteByName(String name) async {
    String tokenPath =
        path.join(Directory.current.path, 'assets', 'auth_bearer_token.txt');
    var token = await File(tokenPath).readAsString();

    final url =
        Uri.parse('https://the-one-api.dev/v2/quote?sort=character?name=$name');
    final res = await http
        .get(url, headers: {HttpHeaders.authorizationHeader: 'Bearer $token'});

    var rng = Random();
    final data = jsonDecode(res.body) as Map<String, dynamic>;
    print(data['docs'][1]['dialog']);
  }
}
