import 'package:flutter/material.dart';

class ZapatoDescripcion extends StatelessWidget {


  final String title;
  final String desc;

  const ZapatoDescripcion({
    super.key,
    required this.title,
    required this.desc
    });


  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(title,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w700)),
          const SizedBox(height: 20),
          Text(desc,style: const TextStyle(color: Colors.black54,height: 1.6),)
        ],
      ),
    );
  }
}