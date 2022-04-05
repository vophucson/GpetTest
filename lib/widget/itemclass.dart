import 'package:flutter/material.dart';
import 'package:gpetest/widget/playvideopage.dart';

class ItemClass extends StatelessWidget {
  final String number;
  final String imageUrl;
  final String date;
  final int pass;
  const ItemClass(
      {Key? key,
      required this.number,
      required this.imageUrl,
      required this.date,
      required this.pass})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const VideoPlay()),
        );
      },
      child: SizedBox(
        height: 180,
        width: 150,
        child: Card(
          shadowColor: Colors.grey,
          elevation: 3,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 75,
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5.0)),
                child: Image(
                  image: NetworkImage(
                    imageUrl,
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  double.tryParse(number) != null ? 'Bài $number' : number,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: double.tryParse(number) != null
                          ? Colors.black
                          : Colors.blueAccent),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Text(
                  date,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: pass == 1
                    ? Row(
                        children: const [
                          Icon(
                            Icons.check_box,
                            color: Colors.green,
                            size: 20,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Tham gia',
                            style: TextStyle(fontSize: 13, color: Colors.green),
                          ),
                        ],
                      )
                    : Row(
                        children: const [
                          Icon(
                            Icons.cancel_presentation,
                            color: Colors.red,
                            size: 20,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Không tham gia',
                            style: TextStyle(fontSize: 11, color: Colors.red),
                          ),
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
