import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vectracom/utils/animal_response.dart';

class AnimalItemWidget extends StatelessWidget {
  final Animal animal;
  const AnimalItemWidget({Key? key,required this.animal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: AppBarTheme.of(context).backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 4,
            blurRadius: 0,
            offset: const Offset(2, 3), // changes position of shadow
          ),
        ],
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Name: ${animal.name}',style: TextStyle(color: Theme.of(context).primaryColor,)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Diet: ${animal.diet}',style: TextStyle(color: Theme.of(context).primaryColor)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Habitat: ${animal.habitat}',style: TextStyle(color: Theme.of(context).primaryColor,)),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(13),bottomRight: Radius.circular(13)),
            child: Image(image: NetworkImage(animal.imageLink),
              height: 400,width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

        ],
      ),
    );
  }
}
