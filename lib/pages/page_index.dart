part of '../main.dart';

final pages = [HistoryPage(), MainPage(), SettingPage()];
final bottomNavColor = Color.fromRGBO(30, 30, 30, 1);

class MyHome extends StatefulWidget {
  MyHome({Key key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectedIndex = 1;
  PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.easeOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          //禁止滚动切换页面
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _selectedIndex = index);
          },
          children: pages,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: bottomNavColor,
            icon: Icon(Icons.history),
            label: "History",
          ),
          BottomNavigationBarItem(
            backgroundColor: bottomNavColor,
            icon: Icon(Icons.add_a_photo_outlined),
            label: "New",
          ),
          BottomNavigationBarItem(
            backgroundColor: bottomNavColor,
            icon: Icon(Icons.settings),
            label: "Setting",
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.shifting,
        onTap: _onItemTapped,
      ),
    );
  }
}
