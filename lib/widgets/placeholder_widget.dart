import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vectracom/utils/animal_response.dart';

class PlaceHolderAnimalWidget extends StatelessWidget {
  const PlaceHolderAnimalWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.grey.shade400,
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Name: ',style: TextStyle(color: Colors.grey,)),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Diet: ',style:TextStyle(color: Colors.grey,)),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Habitat:',style: TextStyle(color: Colors.grey,)),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(13),bottomRight: Radius.circular(13)),
            child: Container(
              height: 400,width: double.infinity,
              color: Colors.grey.shade100,
            )
          ),

        ],
      ),
    );
  }
}
