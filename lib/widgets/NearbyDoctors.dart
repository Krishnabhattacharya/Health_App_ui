import 'package:flutter/material.dart';
import 'package:health_app_ui/model/model.dart';
import 'package:ionicons/ionicons.dart';

class NearbyDoctors extends StatelessWidget {
  const NearbyDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(doctorlist.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(doctorlist[index].dp),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctorlist[index].name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    doctorlist[index].position,
                  ),
                  Row(
                    children: [
                      Icon(
                        Ionicons.star,
                        color: Color.fromARGB(255, 240, 217, 15),
                        size: 19,
                      ),
                      Text(
                        doctorlist[index].rating.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text("(${doctorlist[index].rivews})")
                    ],
                  )
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
