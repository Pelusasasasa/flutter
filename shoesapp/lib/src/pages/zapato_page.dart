import 'package:flutter/material.dart';
import 'package:shoesapp/src/widgets/custom_widgets.dart';

class ZapatoPage extends StatelessWidget {
const ZapatoPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      // body: CustomAppBar(texto: 'Para ti')
      // body: ZapatoSizePreview()
      body: Column(
        children: [
          CustomAppBar(texto: 'Para Ti'),
          SizedBox(height: 20),
          ZapatoSizePreview()
        ],
      )
    );
  }
}
