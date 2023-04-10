// ignore: camel_case_types
class datamodel {
  final String name;
  final String position;
  final int rating;
  final int rivews;
  final dp;
  datamodel({
    required this.name,
    required this.position,
    required this.rating,
    required this.rivews,
    required this.dp,
  });
}

List<datamodel> doctorlist = [
  datamodel(
      name: "Dr Amit Trivedi",
      position: "General Practitioner",
      rating: 4,
      rivews: 76543,
      dp: "assets/doctor_3.jpg"),
  datamodel(
      name: "Dr Tanmay Roy",
      position: "Dentist",
      rating: 0,
      rivews: 4,
      dp: "assets/doctor_1.jpg"),
  datamodel(
      name: "Amit Trivedi",
      position: "",
      rating: 4,
      rivews: 76543,
      dp: "assets/doctor_2.jpg")
];
