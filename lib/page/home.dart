import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../widgets/HealthNeeds.dart';
import '../widgets/NearbyDoctors.dart';
import '../widgets/cardup.dart';


class Home extends StatelessWidget {
  const Home({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('Hello,Dear'),
          Text(
            'How are you feeling today ',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ]),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_on_sharp)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined)),
        ],
      ),
      body: ListView(padding: const EdgeInsets.all(15), children: [
        const cardup(),
        const SizedBox(height: 20),
        Text(
          "Health Needs",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 15),
        const HealthNeeds(),
        const SizedBox(height: 25),
        Text(
          "Nearby Doctors",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 15),
          const   NearbyDoctors(),
      ]),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Ionicons.home_outline,
                ),
                activeIcon: Icon(Icons.home_outlined),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month_outlined,
                ),
                activeIcon: Icon(Ionicons.calendar_outline),
                label: "Calendar"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_bubble_outline,
                ),
                activeIcon: Icon(Ionicons.chatbox_ellipses_outline),
                label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(
                  Ionicons.person_outline,
                ),
                activeIcon: Icon(Icons.percent_outlined),
                label: "Person"),
          ]),
    );
  }
}
