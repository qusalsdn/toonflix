import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/services/api_service.dart';
import 'package:toonflix/widgets/webtoon_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          '오늘의 웹툰',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      // FutureBuilder를 이용하면 StatelessWidget을 StatefulWidget 처럼 사용할 수 있다.
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // ListView.builder는 모든 아이템을 한 번에 만들지 않고 만들려는 아이템에 itemBuilder 함수를 실행한다.
            return Column(children: [
              const SizedBox(height: 50),
              Expanded(
                child: makeList(snapshot),
              ),
            ]);
          }
          return const Center(
            // CircularProgressIndicator는 loading indicator를 보여준다.
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: snapshot.data!.length,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      itemBuilder: (context, index) {
        var webtoon = snapshot.data![index];
        return Webtoon(
          title: webtoon.title,
          thumb: webtoon.thumb,
          id: webtoon.id,
        );
      },
      // separatorBuilder는 위젯을 리턴하는데 그 위젯은 리스트 아이템 사이에 렌더링이된다.
      // 아이템들을 구분하기 위해 사용한다.
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }
}
