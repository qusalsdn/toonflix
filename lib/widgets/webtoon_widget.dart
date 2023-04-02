import 'package:flutter/material.dart';
import 'package:toonflix/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;

  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    // GestureDetector는 대부분의 동작은 감지해준다.
    return GestureDetector(
      onTap: () {
        // Navigator.push()를 이용하면 애니메이션 효과를 이용해서 유저가 다른 페이지로 왔다고 느끼게 해줄 수 있다.
        Navigator.push(
          context,
          // MaterialPageRoute은 위젯을 route로 감싸서 다른 스크린처럼 보이게 만들어준다.
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: title,
              thumb: thumb,
              id: id,
            ),
          ),
        );
        // PageRouteBuilder(
        //   transitionsBuilder:
        //       (context, animation, secondaryAnimation, child) {
        //     var begin = const Offset(0.0, 1.0);
        //     var end = Offset.zero;
        //     var curve = Curves.ease;
        //     var tween = Tween(
        //       begin: begin,
        //       end: end,
        //     ).chain(
        //       CurveTween(
        //         curve: curve,
        //       ),
        //     );
        //     return SlideTransition(
        //       position: animation.drive(tween),
        //       child: child,
        //     );
        //   },
        //   pageBuilder: (context, animation, secondaryAnimation) =>
        //       DetailScreen(
        //     title: title,
        //     thumb: thumb,
        //     id: id,
        //   ),
        //   fullscreenDialog: true,
        // ));
      },
      child: Column(
        children: [
          Hero(
            tag: id,
            child: Container(
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15,
                        offset: const Offset(10, 10),
                        color: Colors.black.withOpacity(0.5))
                  ]),
              clipBehavior: Clip.hardEdge,
              child: Image.network(
                thumb,
                headers: const {
                  "User-Agent":
                      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
