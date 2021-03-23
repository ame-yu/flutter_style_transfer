import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../model/history.dart';
import '../components/utils.dart';

class HistoryPage extends StatefulWidget {
  HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  var historyRecord = DbHistory.instance;

  @override
  Widget build(BuildContext context) {
    () async {
      // historyRecord.saveHistoryRecord(Uint8List.fromList([1, 2, 3]));
      historyRecord.clearAll();
      Future.delayed(Duration(seconds: 1), () async {
        print(await historyRecord.getHistoryRecord(limit: 100));
      });
    }();

    return Stack(children: [
      SizedBox.expand(
        child: gradientMask(AssetImage("assets/images/bg1.jpg"),
            bottomColor: Color.fromRGBO(30, 30, 30, 1)),
      ),
      ListView.builder(
        itemBuilder: (context, index) {
          final _slidableKey = GlobalKey<SlidableState>();
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.blue, width: 2.0),
              color: Colors.black26,
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
              boxShadow: <BoxShadow>[
                CustomBoxShadow(
                    color: Colors.black87,
                    // offset: new Offset(5.0, 5.0),
                    blurRadius: 8.0,
                    blurStyle: BlurStyle.outer)
              ],
            ),
            child: Slidable(
              key: _slidableKey,
              actionExtentRatio: 1 / 3,
              actionPane: SlidableScrollActionPane(),
              child: Container(
                  height: 120.0,
                  // color: Colors.white,
                  child: MaterialButton(
                    onLongPress: () {
                      _slidableKey.currentState!.open(
                        actionType: SlideActionType.secondary,
                      );
                    },
                    onPressed: () {},
                    child: HistoryItem(
                      image: Image.asset("assets/images/gan1.jpg"),
                      title: "Test_Image.png",
                      subTitle: "2021-03-21 10:33:17",
                    ),
                  )),
              secondaryActions: [
                IconSlideAction(
                  caption: "Save",
                  icon: Icons.save,
                  color: Colors.green.withOpacity(.8),
                ),
                IconSlideAction(
                  caption: "Share",
                  icon: Icons.share,
                  color: Colors.blue.withOpacity(.8),
                ),
                IconSlideAction(
                  caption: "Delete",
                  icon: Icons.delete,
                  color: Colors.red.withOpacity(.8),
                ),
              ],
            ),
          );
        },
        itemCount: 2,
      )
    ]);
  }
}

class HistoryItem extends StatelessWidget {
  final Image image;
  final String title;
  final String subTitle;
  HistoryItem({required this.title, required this.image, this.subTitle = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Flex(
        direction: Axis.horizontal,
        children: [
          image,
          SizedBox(
            width: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                this.title,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(this.subTitle,
                  style: TextStyle(color: Colors.white54, fontSize: 14))
            ],
          ),
        ],
      ),
    );
  }
}
