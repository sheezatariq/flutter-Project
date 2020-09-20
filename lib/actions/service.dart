import 'package:assignmentPro/config.dart';
import 'package:http/http.dart' as http;

Future<http.Response> getDataforHome() async{
  final Config conf = Config();
  String url = conf.baseUrl + "en/home";
  final result = await http.get(url); 
  if(result.statusCode != 200)
  throw Exception();
  return result;
}