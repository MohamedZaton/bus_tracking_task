import 'package:bus_tracking_task/controllers/empty_controller.dart';
import 'package:bus_tracking_task/controllers/search_controller.dart';
import 'package:bus_tracking_task/services/api_keys.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_webservice/places.dart';

class MapTabScreen extends GetView<EmptyController> {
  static const String id = "/map_tab_screen";
  MapTabScreen({Key? key}) : super(key: key);
  GoogleMapsPlaces _places = GoogleMapsPlaces(apiKey: kGoogleMapKey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () async {
                // show input autocomplete with selected mode
                // then get the Prediction selected
                Prediction? p = await PlacesAutocomplete.show(
                    context: context, apiKey: kGoogleMapKey);
                displayPrediction(p);
              },
              child: Text('Find address'),
            )));
  }

  Future<void> displayPrediction(Prediction? p) async {
    if (p != null) {
      print("place details id = " + p.toString());
      PlacesDetailsResponse detail =
          await _places.getDetailsByPlaceId(p.placeId.toString());

      var placeId = p.placeId;
      double lat = detail.result.geometry!.location.lat;
      double lng = detail.result.geometry!.location.lng;

      //var address = await Geogra.local.findAddressesFromQuery(p.description);

      print(lat);
      print(lng);
    }
  }
}
