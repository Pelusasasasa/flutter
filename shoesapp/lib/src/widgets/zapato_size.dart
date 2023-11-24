import 'package:flutter/material.dart';

class ZapatoSizePreview extends StatelessWidget {
const ZapatoSizePreview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
      child: Container(
        width: double.infinity,
        height: 500,
        decoration: BoxDecoration(
          color:const Color(0xffffcf53),
          borderRadius: BorderRadius.circular(50)
        ),
        child: const Column(
          children: <Widget>[
            _ZapatoConSombra(),
            _ZapatoTallas()
          ],
        ),
      ),
    );
  }
}

class _ZapatoConSombra extends StatelessWidget {
const _ZapatoConSombra({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Padding(
      padding:  EdgeInsets.all(50),
      child: Stack(
        children: [
          
          Positioned(
            bottom: 20,
            right: 0,
            child: _ZapatoSombra()
            ),

          Image(image:AssetImage('assets/imgs/azul.png'))

        ],
      ),
    );
  }
}

class _ZapatoSombra extends StatelessWidget {

  const _ZapatoSombra();

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 270,
        height: 130,
        decoration:  BoxDecoration(
          // color:Colors.red,
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [
            BoxShadow(color:Color(0xffeaa14e),blurRadius: 40)
          ]
        ),
      ),
    );
  }
}

class _ZapatoTallas extends StatelessWidget {
const _ZapatoTallas();

  @override
  Widget build(BuildContext context){
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _TallaZapatoCaja(7,false),
          _TallaZapatoCaja(7.5,false),
          _TallaZapatoCaja(8,false),
          _TallaZapatoCaja(8.5,false),
          _TallaZapatoCaja(9,true),
          _TallaZapatoCaja(9.5,false),
        ],
      ),
    );
  }
}

class _TallaZapatoCaja extends StatelessWidget {

  final double numero;
  final bool bandera;

  const _TallaZapatoCaja(this.numero,this.bandera);

  @override
  Widget build(BuildContext context) {
    return Container(
          alignment: Alignment.center,
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: bandera ? const Color(0xffF1A23A) : Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              bandera == true ? const BoxShadow(color: Color(0xffF1A23A), blurRadius: 10, offset: Offset(0,5)) : const BoxShadow(),
            ]
          ),
        child: Text('${numero.toString().replaceAll('.0','')}',style: TextStyle(
            color: bandera ? Colors.white : const Color(0xffF1A23A),
            fontSize: 16,
            fontWeight: FontWeight.bold
          )),
        );
      }
}