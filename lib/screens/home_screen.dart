import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'map_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffcf2e2e),
        title: const Text(
          "Live Location",
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Stack(children: [
        Image.asset("name"), Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Koji Engineering",
              style: TextStyle(
                  fontSize: 32,
                  color: Color(0xff162b62),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 55,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(const MapScreen());
                        },
                        child: const Text(
                          "Check In",
                          style: TextStyle(fontSize: 18),
                        ))),
                const SizedBox(width: 20),
                SizedBox(
                    height: 55,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Check Out",
                          style: TextStyle(fontSize: 18),
                        )))
              ],
            ),
          ],
        ),
      ],),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffcf2e2e),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.email), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
