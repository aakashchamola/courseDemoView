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
  int _selectedIndex = 0; // Default page index for Home
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

  // This is called when the user taps on a BottomNavigationBarItem
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index); // Navigate to the corresponding page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(), // PageView for swiping between pages
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex, // Current active index
        onTap: _onItemTapped, // Handle taps
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
        selectedItemColor: Colors.purple, // Active item color
        unselectedItemColor: Colors.grey, // Inactive item color
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontSize: 12), // Customize as needed
        unselectedLabelStyle: TextStyle(fontSize: 12), // Customize as needed
      ),
    );
  }

// Helper method to build the custom icon with the active/inactive state
  Widget _buildNavIcon(String assetPath, bool isActive) {
    return Container(
      width: 30, // Adjust the size of the icon container
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive
            ? Colors.purple.withOpacity(0.1)
            : Colors.transparent, // Background effect when active
      ),
      child: Image.asset(
        assetPath,
        color: isActive
            ? Colors.purple
            : Colors.grey, // Active/Inactive color for the icon
      ),
    );
  }

  // This widget handles the page view and loads the respective screen
  Widget _getBody() {
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(), // Disable swipe navigation
      onPageChanged: (pageIndex) => setState(() => _selectedIndex = pageIndex),
      children: [
        HomeScreen(
          toggleDrawer: () {},
        ), // Your home screen widget
        BatchesScreen(), // Your batches screen widget
        ChatScreen(), // Your chat screen widget
        ProfileScreen(), // Your profile screen widget
      ],
    );
  }
}
