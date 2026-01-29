import 'dart:convert';
import 'package:http/http.dart' as http;
import '../core/constants.dart';


class PlacesService {
static Future<List<dynamic>> getNearbyPlaces(
double lat, double lng, String type) async {
final url = Uri.parse(
'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$lat,$lng&radius=5000&type=$type&key=$googleApiKey');


final response = await http.get(url);
final data = json.decode(response.body);
return data['results'];
}
}