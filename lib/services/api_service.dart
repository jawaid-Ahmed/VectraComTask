import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vectracom/utils/animal_response.dart';
import 'package:vectracom/utils/api.dart';
class ApiService{
  static var client=http.Client();


  Future<List<Animal>?> loadAnimals()async {
    List<Animal> animalsList=[];
    final response = await http.get(Uri.parse(Api.mainUrl));

    if(response.statusCode==200) {
      var jsonResp=jsonDecode(response.body);
      for(int i=0; i<10; i++){
        Animal animal=Animal.fromJson(jsonResp[i]);
        animalsList.add(animal);
      }
      return animalsList;
    }else{
      return null;
    }
  }
}