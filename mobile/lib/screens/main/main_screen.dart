import 'package:flutter/material.dart';
import 'package:mobile/screens/main/account_content.dart';
import 'package:mobile/screens/main/announcements_content.dart';
import 'package:mobile/screens/main/test_code_content.dart';
import 'package:mobile/utils/toast_util.dart';
import 'package:mobile/widgets/status_bar_widget.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int bottomNavigationBarIndex;
  DateTime currentBackPressTime;

  @override
  void initState() {
    super.initState();
    bottomNavigationBarIndex=0;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 0,
                child: StatusBarWidget()
            ),
            Expanded(
              flex: 1,
              child: _mainScreenContent(),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).tabBarTheme.labelColor,
          currentIndex: bottomNavigationBarIndex,
          onTap: (index){changeView(index);},
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.code),
                label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
                label: ""
            ),
          ],
        ),
      ),
    );
  }

  Widget _mainScreenContent()  {
    switch(bottomNavigationBarIndex) {
      case 0:
        return AnnouncementsContent();
        break;
      case 1:
        return TestCodeContent();
        break;
      case 2:
        return AccountContent();
        break;
      default:
        return AnnouncementsContent();
        break;
    }
  }

  Future<bool> onWillPop() async {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      showToast(context, "Klikniej jeszcze raz żeby wyjść");
      return Future.value(false);
    }
    return Future.value(true);
  }

  void changeView(int index) {
    setState(() {
      bottomNavigationBarIndex=index;
    });
  }

}
