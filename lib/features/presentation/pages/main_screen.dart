import 'package:flutter/material.dart';
import 'package:ostello_design/core/utils/constants.dart';
import 'package:ostello_design/features/presentation/pages/batches_screen/batches_screen.dart';
import 'package:ostello_design/features/presentation/pages/chat_screen/chat_screen.dart';
import 'package:ostello_design/features/presentation/pages/home_screen/home_screen.dart';
import 'package:ostello_design/features/presentation/pages/profile_screen/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  late PageController _pageController;

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
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon:
                _buildNavIcon(ImageConstants.navHomeIcon, _selectedIndex == 0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _buildNavIcon(
                ImageConstants.navBatchesIcon, _selectedIndex == 1),
            label: 'Batches',
          ),
          BottomNavigationBarItem(
            icon:
                _buildNavIcon(ImageConstants.navChatIcon, _selectedIndex == 2),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: _buildNavIcon(
                ImageConstants.navProfileIcon, _selectedIndex == 3),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontSize: 12),
        unselectedLabelStyle: TextStyle(fontSize: 12),
      ),
    );
  }

  Widget _buildNavIcon(String assetPath, bool isActive) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.purple.withOpacity(0.1) : Colors.transparent,
      ),
      child: Image.asset(
        assetPath,
        color: isActive ? Colors.purple : Colors.grey,
      ),
    );
  }

  Widget _getBody() {
    return PageView(
      controller: _pageController,
      physics: const AlwaysScrollableScrollPhysics(),
      onPageChanged: (pageIndex) => setState(() => _selectedIndex = pageIndex),
      children: [
        HomeScreen(
          toggleDrawer: () {},
        ),
        BatchesScreen(
          toggleDrawer: () {},
        ),
        ChatScreen(
          toggleDrawer: () {},
        ),
        ProfileScreen(
          toggleDrawer: () {},
        ),
      ],
    );
  }
}
