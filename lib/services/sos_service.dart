import 'location_service.dart';


class SOSService {
static Future<void> triggerSOS(String type) async {
final location = await LocationService.getCurrentLocation();
print('SOS: $type at ${location.latitude}, ${location.longitude}');
}
}