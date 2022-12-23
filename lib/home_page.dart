import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 245,
            decoration: BoxDecoration(
              color: Color(0xFF104E5B),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(40),
              ),
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'My Featured Cards',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Available 12 items',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Container(
                        height: 210,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(26),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            size: 32,
                            color: Color(0xFF104E5B),
                          ),
                        ),
                      ),
                      // SizedBox(width: 20),
                      ...List.generate(
                        3,
                        (index) => Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            height: 210,
                            width: 352,
                            decoration: BoxDecoration(
                              color: Color(0xFFFDC27A),
                              borderRadius: BorderRadius.circular(26),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/vector1.png',
                                ),
                                alignment: Alignment.centerRight,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 14,
                                  left: 22,
                                  child: Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF000000),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 14,
                                  left: 36,
                                  child: Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFDC27A),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 14,
                                  left: 42,
                                  child: Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF000000),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 16,
                                  right: 24,
                                  child: Text(
                                    '2208  2020  1993',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 70,
                                  left: 24,
                                  child: Text(
                                    'Balance',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 90,
                                  left: 24,
                                  child: Text(
                                    '\$180,500,000',
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 167,
                                  left: 24,
                                  child: Text(
                                    'ANGGA HAZZA MASAYOSHI',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Latest Transactions',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                ...List.generate(
                  5,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(bottom: 16),
                      // height: 78,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Image.asset(listLatest[index].imageUrl),
                        title: Text(listLatest[index].detail),
                        subtitle: Text(listLatest[index].date),
                        trailing: Text('\$${listLatest[index].total}'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LatestTransactions {
  final String imageUrl;
  final String detail;
  final String date;
  final int total;
  LatestTransactions({
    required this.imageUrl,
    required this.detail,
    required this.date,
    required this.total,
  });
}

List<LatestTransactions> listLatest = [
  LatestTransactions(
    imageUrl: 'assets/images/icon1.png',
    detail: 'Cakwe Medan',
    date: 'Today, 10 AM',
    total: 920,
  ),
  LatestTransactions(
    imageUrl: 'assets/images/icon2.png',
    detail: 'Topup',
    date: 'Yesterday, 4 PM',
    total: 21920,
  ),
  LatestTransactions(
    imageUrl: 'assets/images/icon3.png',
    detail: 'Baggage Service',
    date: '22 Jan, 2020',
    total: 5920,
  ),
  LatestTransactions(
    imageUrl: 'assets/images/icon4.png',
    detail: 'Entertainment',
    date: '1 Dec, 2019',
    total: 1920,
  ),
  LatestTransactions(
    imageUrl: 'assets/images/icon5.png',
    detail: 'Baggage Service',
    date: '22 Jan, 2020',
    total: 1312,
  ),
];
