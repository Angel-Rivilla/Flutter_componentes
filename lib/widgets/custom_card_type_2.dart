import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? imageText;

  const CustomCardType2({
    Key? key, 
    required this.imageUrl, 
    this.imageText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(right: 100, left: 100, top: 10, bottom: 10),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.6),
      child: Column(
        children: [
          
          FadeInImage(
            image: AssetImage( imageUrl ), 
            placeholder: const AssetImage('assets/gifs/jar-loading.gif'),
            width: double.infinity,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),

          if( imageText != null )
            Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.only( right: 20, top: 10, bottom: 10 ),
              child: Text( imageText! )
            )
          
        ],
      ),
    );
  }
}