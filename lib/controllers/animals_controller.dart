import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:vectracom/services/api_service.dart';
import 'package:vectracom/utils/animal_response.dart';

class AnimalsController extends GetxController{
  var animalsList= <Animal>[].obs;
  var isLoading=true.obs;

  @override
  void onInit() {
    getAllAnimals();
    super.onInit();
  }

  void getAllAnimals()async{
    isLoading(true);
    try {
      var animals=await ApiService().loadAnimals();
      if(animals!=null){
        animalsList.value=animals;
      }
    } finally {
      isLoading(false);
    }

    isLoading(false);
  }

}