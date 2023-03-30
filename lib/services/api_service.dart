import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';
  final String today = 'today';

  void getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');
    // Future는 미래에 받을 값의 타입을 알려준다.
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      throw Error();
    }
  }
}
