// ignore_for_file: unnecessary_new

import 'dart:io';

import 'travil_trip.dart';

void main(List<String> arguments) {
  List tripList = [
    [1, "Cairo", 200, 24 - 3 - 2021, 500],
    [2, "Giza", 200, 20 - 3 - 2021, 1500],
    [3, "Cairo", 200, 24 - 3 - 2021, 500],
    [6, "Giza", 200, 20 - 3 - 2021, 1500],
    [7, "Giza", 200, 20 - 3 - 2021, 1500],
    [8, "Giza", 200, 20 - 3 - 2021, 1500],
    [9, "Giza", 200, 20 - 3 - 2021, 1500],
    [10, "Giza", 200, 20 - 3 - 2021, 1500],
    [11, "Giza", 200, 20 - 3 - 2021, 1500],
    [12, "Giza", 200, 20 - 3 - 2021, 1500],
    [13, "Giza", 200, 20 - 3 - 2021, 1500],
  ];
  print("the main ordered trips are= ");
  for (int i = 0; i < tripList.length; i++) {
    print(tripList[i]);
  }
  print("_____________________________________________");
  Trip t = new Trip(4, "Giza", 200, DateTime.now(), 1800);
  t.addTrip(5, "Menia", DateTime.now(), 2000, 200);
  print("View Trip= \n ${t.viewTrip([5, "menya", DateTime.now(), 290, 200])}");
  print("_____________________________________________");

  double d = double.parse(stdin.readLineSync()!);
  print("the distance = \n ${t.discount(d)}");

  print("_____________________________________________");
  print("The reversed trip is : \n");
  t.reverseTrip(tripList);
  print("_____________________________________________");
  print("The deleted trip is : ${t.deleteTrip(tripList)}");
  print("_____________________________________________\n");
  print("Th last 10 trips is : \n ${t.latestTenTrips(tripList)}");
  print("\n_____________________________________________\n");
}
