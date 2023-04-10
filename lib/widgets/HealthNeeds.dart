import 'package:flutter/material.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    List<customicon> cicons = [
      customicon(name: "Appoitment", icon: "assets/appointment.png"),
      customicon(name: "Hospital", icon: "assets/hospital.png"),
      customicon(name: "Covin-19", icon: "assets/virus.png"),
      customicon(name: "More", icon: "assets/more.png"),
    ];

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(cicons.length, (index) {
          return Column(
            children: [
              Container(
                height: 60,
                width: 60,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(cicons[index].icon),
              ),
              Text(cicons[index].name),
            ],
          );
        }));
  }
}

class customicon {
  final String name;
  final String icon;

  customicon({required this.name, required this.icon});
}
