class Trip {
  int _id = 0;
  String _location = "";
  DateTime _dateTime = DateTime.now();
  double _price = 0.0;
  final _passengerLimit = 200;
  Trip(int id, String location, dynamic passengerLimit, DateTime dateTime,
      double price) {
    this._id = id;

    this._location = location;

    this._dateTime = dateTime;

    this._price = price;
    passengerLimit = passengerLimit;
  }
  set id(id) {
    this._id = id;
  }

  int getId() {
    return _id;
  }

  set Location(Location) {
    this._location = Location;
  }

  String getLocation() {
    return _location;
  }

  set price(price) {
    this._price = price;
  }

  double getPrice() {
    return _price;
  }

  set dateTime(dateTime) {
    this._dateTime = dateTime;
  }

  DateTime getDateTime() {
    return _dateTime;
  }

// Function add New Trip
  addTrip(int id, String location, DateTime dateTime, double price,
      passengerLimit) {
    List addTrip = [];
    addTrip.addAll([id, location, dateTime, price, passengerLimit]);
  }

  // function Edit Trip
  editTrip(int id, String location, DateTime dateTime, double price,
      passengerLimit) {
    List editTrip = [];
    editTrip.add(id);
    editTrip.add(location);
    editTrip.add(dateTime);
    editTrip.add(price);
    editTrip.add(passengerLimit);
  }

  //function Delete Trip
  deleteTrip(List tripList) {
    return [];
  }

  // return the trip
  List viewTrip(newTrip) {
    return newTrip;
  }

// function for search in the trip
  searchTrip(List newTrip, double price) {
    for (int i = 0; i < newTrip.length; i++) {
      for (int j = 0; j < newTrip[i].length; j++) {
        if (newTrip[i][j].contains(price)) {
          print("yes,found it.");
        } else {
          print("not fount !! ");
        }
      }
    }
  }

  // return the reverse trip
  reverseTrip(List tripList) {
    for (int i = tripList.length - 1; i >= 0; i--) {
      print(tripList[i]);
    }
  }

  // discount
  discount(double price) {
    if (price > 10000) {
      price -= (20 / 100) * price;
    }
    return price;
  }

  //latestTenTrips
  latestTenTrips(List tripList) {
    List newList = [];
    for (int i = tripList.length - 1; i > tripList.length - 12; i--) {
      print(tripList[i]);
      //it will print the ten trip list
    }
  }
}
