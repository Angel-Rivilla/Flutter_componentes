import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox( height: 10 ),
          CustomCardType2(imageUrl: 'assets/img/card-charizard.png'),
          SizedBox( height: 10 ),
          CustomCardType2(imageUrl: 'assets/img/card-gyarados.png', imageText: 'Carta de gyarados'),
        ],
      ),
    );
  }
}
