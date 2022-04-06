import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gpetest/bloc/classes_bloc.dart';
import 'package:gpetest/widget/avartcontainerc.dart';
import 'package:gpetest/widget/itemclass.dart';
import 'package:gpetest/itemclassmodel.dart';
import 'package:gpetest/widget/titlecus_widget.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TestPageState();
  }
}

const List<ItemModel> items = <ItemModel>[
  ItemModel(
      number: '1',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUFop_8oMExBc0_wFEy50ovoJ4tKbVNHiqzw&usqp=CAU',
      date: '4/4/2022',
      pass: 1),
  ItemModel(
      number: 'Kiểm tra',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCvGOvDn0ZHgs8Rs-QG6GDLxB1HbZK0VleAg&usqp=CAU',
      date: '4/4/2022',
      pass: 1),
  ItemModel(
      number: '2',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIx4p0s69dEVz_IMYSli2nwS1DLHwuvF8Tyw&usqp=CAU',
      date: '4/4/2022',
      pass: 1),
  ItemModel(
      number: '3',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAzXWKWMK0bXXRoWgG-K7MY11GQGp5U1gqgA&usqp=CAU',
      date: '4/4/2022',
      pass: 1),
  ItemModel(
      number: '4',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd6bCEKOfrU_jpMmgxtTa41BUfZVU87MClMA&usqp=CAU',
      date: '4/4/2022',
      pass: 0),
  ItemModel(
      number: '5',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUFop_8oMExBc0_wFEy50ovoJ4tKbVNHiqzw&usqp=CAU',
      date: '4/4/2022',
      pass: 0),
];

class TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClassesBloc, ClassesState>(builder: (context, state) {
      return Scaffold(
        backgroundColor: const Color(0xFFFFF8E1),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              AvartContainer(
                key: UniqueKey(),
              ),
              TitleCus(
                  title: 'Số bài đã học trong tháng',
                  subTitle:
                      'Điều tuyệt vời nhất của việc học hành là không ai có thể lấy đi nó khỏi bạn',
                  widget: CircularPercentIndicator(
                    radius: 40.0,
                    lineWidth: 10.0,
                    animation: true,
                    percent: 0.9,
                    center: const Text(
                      "90%",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.amber),
                    ),
                    circularStrokeCap: CircularStrokeCap.butt,
                    progressColor: Colors.blue,
                  ),
                  pass: 9,
                  total: 10),
              TitleCus(
                  title: 'Số bài đã học trong năm',
                  subTitle:
                      'Học không phải về việc thế gới đang làm gì, mà là những gì bạn có thể làm cho nó',
                  widget: SizedBox(
                    height: 82,
                    width: 82,
                    child: LiquidCircularProgressIndicator(
                      value: 0.4,
                      valueColor: AlwaysStoppedAnimation(Colors.blue.shade300),
                      backgroundColor: Colors.white,
                      borderColor: Colors.blue.shade300,
                      borderWidth: 2,
                      direction: Axis.vertical,
                      center: const Text(
                        "40%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.amber),
                      ),
                    ),
                  ),
                  pass: 32,
                  total: 80),
              const Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: Text(
                  'Lịch học',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              Container(
                height: 25,
                //   color: Colors.orange,
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Tháng 1',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.orange,
                      elevation: 0,
                      onPressed: () {
                        context
                            .read<ClassesBloc>()
                            .add(const ClassesShowOrOff(month: 1));
                      },
                      child: const Icon(
                        Icons.arrow_drop_down,
                        size: 30.0,
                      ),
                    )
                  ],
                ),
              ),
              state.show1 == true
                  ? SizedBox(
                      height: 360,
                      child: GridView.count(
                        crossAxisCount: 3,
                        crossAxisSpacing: 3.0,
                        mainAxisSpacing: 3.0,
                        childAspectRatio: 0.72,
                        padding: const EdgeInsets.all(5.0),
                        children: List.generate(
                          items.length,
                          (index) {
                            return SizedBox(
                              child: ItemClass(
                                  number: items[index].number,
                                  imageUrl: items[index].imageUrl,
                                  date: items[index].date,
                                  pass: items[index].pass),
                            );
                          },
                        ),
                      ),
                    )
                  : const SizedBox(),
              Container(
                height: 25,
                //   color: Colors.orange,
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                decoration: const BoxDecoration(
                  color: Colors.orange,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Tháng 2',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.orange,
                      elevation: 0,
                      onPressed: () {
                        context
                            .read<ClassesBloc>()
                            .add(const ClassesShowOrOff(month: 2));
                      },
                      child: const Icon(
                        Icons.arrow_drop_down,
                        size: 30.0,
                      ),
                    )
                  ],
                ),
              ),
              state.show2 == true
                  ? SizedBox(
                      height: 360,
                      child: GridView.count(
                        crossAxisCount: 3,
                        crossAxisSpacing: 3.0,
                        mainAxisSpacing: 3.0,
                        childAspectRatio: 0.72,
                        padding: const EdgeInsets.all(5.0),
                        children: List.generate(
                          items.length,
                          (index) {
                            return ItemClass(
                                number: items[index].number,
                                imageUrl: items[index].imageUrl,
                                date: items[index].date,
                                pass: items[index].pass);
                          },
                        ),
                      ),
                    )
                  : const SizedBox()
            ],
          ),
        ),
      );
    });
  }
}
