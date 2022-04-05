import 'package:flutter/material.dart';

class AvartContainer extends StatelessWidget {
  const AvartContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 210,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.amberAccent, width: 2.5),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        Positioned(
          top: -50,
          left: 140,
          child: Container(
            width: 120.0,
            height: 120.0,
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://phunugioi.com/wp-content/uploads/2020/01/anh-avatar-supreme-dep-lam-dai-dien-facebook.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(60.0)),
              border: Border.all(
                color: Colors.amber.shade300,
                width: 6.0,
              ),
            ),
          ),
        ),
        Positioned(
            top: 70,
            left: 130,
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Text(
                    'Võ Phúc Sơn',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber),
                  ),
                ),
                Text(
                  'vophucson@gmail.com',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            )),
        Positioned(
            top: 140,
            left: 50,
            width: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [
                    Image(
                        height: 45,
                        width: 45,
                        fit: BoxFit.cover,
                        image: AssetImage('assets/best.png')),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Xếp loại',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(left: BorderSide(color: Colors.amber)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        const Image(
                            height: 45,
                            width: 45,
                            fit: BoxFit.cover,
                            image: AssetImage('assets/education.png')),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            RichText(
                                text: const TextSpan(
                                    text: '12',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                  TextSpan(
                                      text: '/ ',
                                      style: TextStyle(color: Colors.brown)),
                                  TextSpan(
                                      text: '1852',
                                      style: TextStyle(color: Colors.brown)),
                                ])),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Xếp hạng',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ))
      ],
    );
  }
}
