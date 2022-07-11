import 'package:geolocator/geolocator.dart';

class Location{

  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async{
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    permission = await Geolocator.requestPermission();
    if( permission== LocationPermission.denied){
      //nothing
    }
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    }
    catch(e){
      print(e);
    }
  }
}