import 'package:flutter/material.dart';

ValueNotifier<int> indexchangenotifier = ValueNotifier(0);

class BottemNavigation extends StatelessWidget {
  const BottemNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexchangenotifier,
      builder: (context, int newindex, child_) {
        return BottomNavigationBar(
            currentIndex: newindex,
            onTap: (index) {
              indexchangenotifier.value = index;
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(color: Colors.white),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.collections),
                label: ' New & Hot',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions),
                label: 'Fast Laught',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.download),
                label: 'Download',
              ),
            ]);
      },
    );
  }
}
