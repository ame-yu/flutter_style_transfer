import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_style_transfer/pages/image_viewer.dart';
import '../components/utils.dart';
import '../blocs/history_bloc.dart';
import 'package:share/share.dart';

class HistoryPage extends StatefulWidget {
  HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryBloc, HistoryState>(builder: (context, state) {
      return Stack(children: [
        background(),
        ListView.builder(
            itemBuilder: (context, index) {
              final item = state.records[index];
              final _slidableKey = GlobalKey<SlidableState>();
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: outSideShadow(),
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ImageViewer(item.content)));
                        },
                        child: HistoryItem(
                          image: Image.memory(item.content),
                          title: "${item.content.lengthInBytes} ",
                          subTitle: item.time,
                        ),
                      )),
                  secondaryActions: [
                    IconSlideAction(
                      onTap: () {
                        saveImage(item.content, context: context);
                      },
                      caption: "Save",
                      icon: Icons.save,
                      color: Colors.green.withOpacity(.8),
                    ),
                    IconSlideAction(
                      onTap: () async {
                        var path = await saveImage(item.content);
                        print(path);
                        if (path != null && path.isNotEmpty) {
                          Share.shareFiles([path.replaceFirst("file:", "")]);
                        } else {
                          showSnakeBar(context, "Share failed.");
                        }
                      },
                      caption: "Share",
                      icon: Icons.share,
                      color: Colors.blue.withOpacity(.8),
                    ),
                    IconSlideAction(
                      caption: "Delete",
                      icon: Icons.delete,
                      color: Colors.red.withOpacity(.8),
                      onTap: () {
                        BlocProvider.of<HistoryBloc>(context)
                            .add(HistoryEvent.deleteRecord(item.key));
                      },
                    ),
                  ],
                ),
              );
            },
            itemCount: state.records.length)
      ]);
    });
  }

  BoxDecoration outSideShadow() {
    return BoxDecoration(
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
    );
  }

  SizedBox background() {
    return SizedBox.expand(
      child: gradientMask(AssetImage("assets/images/bg1.jpg"),
          bottomColor: Theme.of(context).backgroundColor,
          maskColor: Theme.of(context).backgroundColor.withOpacity(.5)),
    );
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
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 300),
            child: image,
          ),
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
