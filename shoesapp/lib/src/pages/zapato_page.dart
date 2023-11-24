import 'package:flutter/material.dart';
import 'package:shoesapp/src/widgets/custom_widgets.dart';

class ZapatoPage extends StatelessWidget {
const ZapatoPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(texto: 'Para Ti'),
          SizedBox(height: 20),
          
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                    ZapatoSizePreview(),
                    ZapatoDescripcion(
                      title: 'Nike Air Max 720',
                      desc: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."
                    )
                ],
              ),
            )
          )
        ],
      )
    );
  }
}
