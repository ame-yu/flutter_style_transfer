import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../components/utils.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox.expand(
        child: gradientMask(AssetImage("assets/images/bg1.jpg"),
            bottomColor: Color.fromRGBO(30, 30, 30, 1)),
      ),
      ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.blue, width: 2.0),
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
              boxShadow: <BoxShadow>[
                new BoxShadow(
                  color: Colors.black,
                  blurRadius: 3.0,
                  offset: new Offset(0.0, 3.0),
                ),
              ],
            ),
            child: Slidable(
              actionExtentRatio: 1 / 3,
              actionPane: SlidableBehindActionPane(),
              child: Container(
                height: 120.0,
                // color: Colors.white,
                child: ListTile(
                  leading: Image.asset("assets/images/gan1.jpg"),
                  title: Text("123"),
                ),
              ),
              secondaryActions: [
                IconSlideAction(
                  caption: "Save",
                  icon: Icons.save,
                  color: Colors.green,
                ),
                IconSlideAction(
                  caption: "Share",
                  icon: Icons.share,
                  color: Colors.blue,
                ),
                IconSlideAction(
                  caption: "Delete",
                  icon: Icons.delete,
                  color: Colors.red,
                ),
              ],
            ),
          );
        },
        itemCount: 3,
      )
    ]);
  }
}
