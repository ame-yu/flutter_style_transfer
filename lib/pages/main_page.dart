import 'package:flutter/material.dart';
import '../components/helper.dart';
import '../components/loading.dart';
import '../components/utils.dart';
import '../blocs/image_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool more = false;
  int selectStyle = 1;
  late ImageBloc imageBloc;
  @override
  void initState() {
    super.initState();
  }

  changeSelector() {
    setState(() {
      more = !more;
      selectStyle = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageBloc, ImageState>(builder: (context, state) {
      imageBloc = BlocProvider.of<ImageBloc>(context);
      // if (state.modelLoaded == false) {
      //   return Center(
      //     child: CircularProgressIndicator(),
      //   );
      // } else {
      return Container(
          color: Theme.of(context).backgroundColor,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 90,
                  child:
                      more ? styleSelectorWidget(state) : ganSelectorWidget(),
                ),
                state.originImage != null
                    ? Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.width,
                            child: Image.memory(
                              state.transferImage ?? state.originImage!,
                              fit: BoxFit.cover,
                            ),
                          ),
                          state.isLoading
                              ? loadingWidget()
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton.icon(
                                        onPressed: () {
                                          imageBloc
                                              .add(ImageEvent.resetImage());
                                        },
                                        icon: Icon(Icons.cached),
                                        label: Text("Reset")),
                                    SizedBox(
                                      width: 40.0,
                                    ),
                                    ElevatedButton.icon(
                                        onPressed: () {
                                          saveImage(state.transferImage!,
                                              context: context);
                                        },
                                        icon: Icon(Icons.save_outlined),
                                        label: Text("Save"))
                                  ],
                                )
                        ],
                      )
                    : Container(
                        margin: EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).dialogBackgroundColor,
                          border: Border.all(
                            color: Color(0xff425362),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 30.0,
                          ),
                          onPressed: () async {
                            if (more) {
                              imageBloc.add(ImageEvent.arbitraryTransfer(
                                  "assets/images/style$selectStyle.jpg"));
                            } else {
                              imageBloc.add(ImageEvent.ganTransfer());
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //     SnackBar(
                              //         content: Text(
                              //             "GAN service not availabel yet.")));
                            }
                          },
                          child: centerImageSelectorWidget(),
                        ),
                      ),
                SizedBox(
                  height: 15.0,
                )
              ],
            ),
          ));
    });
  }

  @override
  dispose() {
    super.dispose();
    // In same page should always opened
    // imageBloc.close();
  }

  activeStyleDecoration() => BoxDecoration(
        boxShadow: [
          CustomBoxShadow(
              color: Theme.of(context).focusColor,
              blurRadius: 8.0,
              blurStyle: BlurStyle.outer),
        ],
        borderRadius: BorderRadius.circular(20),
      );

  Column centerImageSelectorWidget() {
    return Column(
      children: [
        Text(
          'ADD IMAGE',
          style: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 16.0,
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
                  fillColor: Theme.of(context).accentColor.withOpacity(.5),
                  elevation: 0.0,
                  padding: const EdgeInsets.all(12.0),
                  shape: CircleBorder(),
                  constraints: BoxConstraints(),
                  onPressed: () {},
                  child: Icon(Icons.image_rounded,
                      size: 22.0, color: Theme.of(context).backgroundColor),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Image',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }

  ListView ganSelectorWidget() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        if (index == 0) {
          return swapButton(lable: "More");
        }
        var stylePath = 'assets/images/gan$index.jpg';
        return GestureDetector(
          onTap: () {
            setState(() {
              selectStyle = index;
            });
          },
          onLongPress: () {
            showDoc(context,
                "https://github.com/SystemErrorWang/White-box-Cartoonization");
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
            decoration: selectStyle == index ? activeStyleDecoration() : null,
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

  ListView styleSelectorWidget(ImageState state) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        if (index == 0) return swapButton(color: Colors.red, lable: "GAN");
        var stylePath = 'assets/images/style$index.jpg';
        return GestureDetector(
          onTap: () {
            if (selectStyle == index) return;

            setState(() {
              selectStyle = index;
            });

            if (state.originImage != null) {
              imageBloc.add(ImageEvent.arbitraryTransfer(
                  "assets/images/style$selectStyle.jpg"));
            }

            // imageBloc.add(ImageEvent.transferImage(stylePath));
          },
          child: Container(
            decoration: selectStyle == index ? activeStyleDecoration() : null,
            margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
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

  Container swapButton({required String lable, Color? color = null}) {
    return Container(
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: TextButton.icon(
              onPressed: changeSelector,
              icon: Icon(
                Icons.rotate_90_degrees_ccw_outlined,
                color: color,
              ),
              label: Text(
                lable,
                style: TextStyle(color: Theme.of(context).accentColor),
              ))),
    );
  }
}
