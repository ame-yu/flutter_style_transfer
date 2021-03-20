import 'package:flutter/material.dart';
import 'copytransfer_page.dart';
import 'helper.dart';
import '../blocs/image_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selector = 0;
  int selectStyle = -1;
  ImageBloc imageBloc;
  @override
  void initState() {
    super.initState();
  }

  changeSelector() {
    setState(() {
      selector ^= 1;
      selectStyle = -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final nightModeColor = Color(0xff222222);
    return BlocBuilder<ImageBloc, ImageState>(builder: (context, state) {
      imageBloc = BlocProvider.of<ImageBloc>(context);
      if (state.modelLoaded == false) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return state.originImage != null
            ? TransferPage()
            : Container(
                color: nightModeColor,
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 80,
                        child: selector == 0
                            ? getStyleSelectorWidget()
                            : getGanSelectorWidget(),
                      ),
                      FlatButton(
                        color: nightModeColor,
                        onPressed: () async {
                          imageBloc.add(ImageEvent.loadImage());
                          await Future<void>.delayed(
                              const Duration(seconds: 1));
                          Navigator.pushNamedAndRemoveUntil(
                              context, "/display", (route) => false);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 30.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            border: Border.all(
                              color: Color(0xff425362),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'ADD IMAGE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      RawMaterialButton(
                                        fillColor: Colors.white,
                                        elevation: 0.0,
                                        padding: const EdgeInsets.all(12.0),
                                        shape: CircleBorder(),
                                        constraints: BoxConstraints(),
                                        child: Icon(
                                          Icons.image_rounded,
                                          size: 22.0,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Image',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      )
                    ],
                  ),
                ));
      }
    });
  }

  @override
  dispose() {
    super.dispose();
    imageBloc?.close();
  }

  ListView getGanSelectorWidget() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final idx = index + 100;
        if (index == 0) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                border: selectStyle == idx
                    ? Border.all(
                        color: Colors.white,
                        width: 2,
                      )
                    : null),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FlatButton.icon(
                    color: Colors.white12,
                    onPressed: changeSelector,
                    textColor: Colors.red,
                    icon: Icon(Icons.rotate_90_degrees_ccw_outlined),
                    label: Text(
                      "More",
                      style: TextStyle(color: Colors.white),
                    ))),
          );
        }
        var stylePath = 'assets/images/gan$index.jpg';
        return GestureDetector(
          onTap: () {
            if (selectStyle == idx) {
              return;
            }

            setState(() {
              selectStyle = idx;
            });
          },
          onLongPress: () {
            showDoc(context,
                "https://github.com/SystemErrorWang/White-box-Cartoonization");
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              border: selectStyle == idx
                  ? Border.all(
                      color: Colors.white,
                      width: 2,
                    )
                  : null,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(stylePath),
            ),
          ),
        );
      },
      itemCount: 2,
    );
  }

  ListView getStyleSelectorWidget() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        if (index == 0)
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FlatButton.icon(
                    color: Colors.white12,
                    onPressed: changeSelector,
                    textColor: Colors.red,
                    icon: Icon(Icons.rotate_90_degrees_ccw_outlined),
                    label: Text(
                      "GAN",
                      style: TextStyle(color: Colors.white),
                    ))),
          );
        var stylePath = 'assets/images/style$index.jpg';
        return GestureDetector(
          onTap: () {
            if (selectStyle == index) {
              return;
            }

            setState(() {
              selectStyle = index;
            });

            // imageBloc.add(ImageEvent.transferImage(stylePath));
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              border: selectStyle == index
                  ? Border.all(
                      color: Colors.white,
                      width: 2,
                    )
                  : null,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(stylePath),
            ),
          ),
        );
      },
      itemCount: 26,
    );
  }
}
