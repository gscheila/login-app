import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      if (index < 2) {
        _selectedIndex = index;
      } else if (index > 2) {
        _selectedIndex = index - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Bem-vindo!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: Transform.translate(
        offset: const Offset(0, -10),
        child: SizedBox(
          width: 56,
          height: 56,
          child: FloatingActionButton(
            elevation: 2,
            backgroundColor: const Color(0xFF00A884),
            onPressed: () {},
            child: const Icon(
              Icons.add,
              size: 28,
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF00A884),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        onTap: _onItemTapped,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Amigos',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Grupos',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 24,
              child: Container(),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: 'Atividade',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Conta',
          ),
        ],
      ),
    );
  }
} 