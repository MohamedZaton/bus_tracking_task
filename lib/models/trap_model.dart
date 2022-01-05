import 'dart:convert';

class TrapModel {
  String? id;
  String? startTimeTrip;
  String? endTimeTrip;
  String? startLocationTrap;
  String? endLocationTrap;
  String? myCurrentLocat;
  String? myDestinationLocat;

  TrapModel(
      {this.id,
      this.startTimeTrip,
      this.endTimeTrip,
      this.startLocationTrap,
      this.endLocationTrap,
      this.myCurrentLocat,
      this.myDestinationLocat});

  factory TrapModel.fromJson(Map<String, dynamic> json) {
    return TrapModel(
      id: json['id'] ?? "",
      startTimeTrip: json['startTimeTrip'] ?? "",
      endTimeTrip: json['endTimeTrip'] ?? "",
      startLocationTrap: json['startLocationTrap'] ?? "",
      endLocationTrap: json['endLocationTrap'] ?? "",
      myCurrentLocat: json['myCurrentLocat'] ?? "",
      myDestinationLocat: json['myDestinationLocat'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['startTimeTrip'] = this.startTimeTrip;
    data['endTimeTrip'] = this.endTimeTrip;
    data['startLocationTrap'] = this.startLocationTrap;
    data['endLocationTrap'] = this.endLocationTrap;
    data['myCurrentLocat'] = this.myCurrentLocat;
    data['myDestinationLocat'] = this.myDestinationLocat;
    return data;
  }
}
