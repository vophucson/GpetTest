import 'package:flutter/material.dart';

class TitleCus extends StatelessWidget {
  final String title;
  final String subTitle;
  final Widget widget;
  final int pass;
  final int total;
  const TitleCus(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.widget,
      required this.pass,
      required this.total})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        height: 160,
        width: 700,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.amberAccent, width: 2.5),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 22,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: pass.toString(),
                            style: const TextStyle(
                                color: Colors.red,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                          const TextSpan(
                              text: '/ ',
                              style: TextStyle(color: Colors.brown)),
                          TextSpan(
                              text: total.toString(),
                              style: const TextStyle(color: Colors.brown)),
                        ])),
                    const SizedBox(
                      height: 3,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          primary: Colors.white,
                          minimumSize: const Size(90, 2)),
                      onPressed: () {},
                      child: const Text(
                        'Vào học',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                widget
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                subTitle,
                style: const TextStyle(fontSize: 10, color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
