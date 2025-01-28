import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/Buy/views/buy_view.dart';
import 'package:chicken/app/modules/Homepage/views/homepage_view.dart';
import 'package:chicken/app/modules/account/views/account_view.dart';
import 'package:chicken/app/modules/sellPage/views/sell_page_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MainpageView extends StatefulWidget {
  const MainpageView({super.key});

  @override
  _MainpageViewState createState() => _MainpageViewState();
}

class _MainpageViewState extends State<MainpageView> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          HomepageView(),
          SellPageView(),
          SellPageView(),
          BuyView(),
          BuyView(),
          AccountView(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedFontSize: 12,
        selectedLabelStyle: TextStyle(
          height: 1.8,
        ),
        unselectedLabelStyle: TextStyle(
          height: 1.8, // Consistent gap for unselected items
        ),
        selectedItemColor: greyText.withOpacity(0.58),
        unselectedItemColor: greyText.withOpacity(0.58),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/homeIcon.png'),
              height: 25,
              width: 25,
            ),
            label: 'হোম',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/bikroy.png'),
              height: 25,
              width: 25,
            ),
            label: 'বিক্রয়',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/kroy.png'),
              height: 25,
              width: 25,
            ),
            label: 'ক্রয়',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/profile.png'),
              height: 25,
              width: 25,
            ),
            label: 'অ্যাকাউন্ট',
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 100,
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 36,
              child: CircleAvatar(
                radius: 35,
                backgroundColor: secondaryColor,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                ),
              ),
            ),
            Gap(5),
            Text(
              'বিজ্ঞাপন',
              style: TextStyle(
                color: greyText.withOpacity(0.58),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
