import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Google_Map extends StatefulWidget {
  const Google_Map({Key? key}) : super(key: key);

  @override
  State<Google_Map> createState() => _Google_MapState();
}

class _Google_MapState extends State<Google_Map> {
  static final CameraPosition _kGooglePlex = const CameraPosition(
      target:LatLng(21.250000, 81.629997),
      zoom: 14,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text("MAP"),
      ),
      body: GoogleMap(initialCameraPosition: _kGooglePlex,),


    );
  }
}

