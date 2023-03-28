import 'package:flutter/material.dart';
import 'package:toonflix/widgets/Button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

// flutter는 widget의 조합이다.
// build 메소드는 widget의 ui를 만든다.
// StatelessWidget은 아주 기초적인 Widget이고 화면에 뭔가를 띄워주는 거 말고는 다른 기능이 없다.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // Material은 구글, Cupertino는 ios 스타일이다.
    return MaterialApp(
      // Scaffold는 뼈대이다.
      home: Scaffold(
          backgroundColor: const Color(
              0xFF181818), // 0xFF 뒤에 색상값을 붙이면 custom으로 색상을 지정할 수 있다.
          // SingleChildScrollView로 인해 화면에서 콘텐츠가 넘쳐도 스크롤로 내리거나 올려서 볼 수 있다.
          body: SingleChildScrollView(
            child: Padding(
              // EdgeInsets.all()은 좌우상하 전부에 padding을 준다.
              // symmetric은 수평 or 수직에 padding을 줄 수 있다. horizontal: 수평 vertical: 수직
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.end, // mainAxisAlignment은 수평 방향
                    children: [
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.end, // crossAxisAlignment은 수직 방향
                        children: [
                          const Text(
                            'Hey, Minu',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Welcome back',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '\$5 194 482',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Container는 HTML에서 div 같은 것이다.
                      Button(
                        text: 'Transfer',
                        bgColor: Color(0xFFF2B33A),
                        textColor: Colors.black,
                      ),
                      Button(
                        text: 'Request',
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Wallets',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('View All',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CurrencyCard(
                    name: 'Euro',
                    code: 'EUR',
                    amount: '6 428',
                    icon: Icons.euro_rounded,
                    isInverted: false,
                    dx: 0,
                    dy: 0,
                  ),
                  const CurrencyCard(
                    name: 'Bitcoin',
                    code: 'BTC',
                    amount: '9 785',
                    icon: Icons.currency_bitcoin,
                    isInverted: true,
                    dx: 0,
                    dy: -15,
                  ),
                  const CurrencyCard(
                    name: 'Dollar',
                    code: 'USD',
                    amount: '428',
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                    dx: 0,
                    dy: -35,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
