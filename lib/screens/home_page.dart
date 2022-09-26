import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:vectracom/controllers/animals_controller.dart';
import 'package:vectracom/utils/animal_response.dart';
import 'package:vectracom/utils/api.dart';
import 'package:vectracom/widgets/animal_item_widget.dart';
import 'package:vectracom/widgets/placeholder_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final AnimalsController controller=Get.put(AnimalsController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.grey),),
        elevation: 0.0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Obx(() {
        if(controller.isLoading.value){
          return ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 5,
            itemBuilder: (context, i) =>
                const PlaceHolderAnimalWidget(),
          );
        }else{
          return ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: controller.animalsList.length,
            itemBuilder: (context, i) =>
                AnimalItemWidget(animal: controller.animalsList[i]),
          );
        }
      }

      ),
    );
  }
}
