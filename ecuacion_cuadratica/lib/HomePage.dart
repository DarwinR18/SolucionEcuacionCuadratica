import 'package:ecuacion_cuadratica/resultados.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
  
}

class _HomePageState extends State<HomePage> {
  Resultados r = new Resultados();
  TextEditingController _controllerX = TextEditingController();
  TextEditingController _controllerB = TextEditingController();
  TextEditingController _controllerC = TextEditingController();

  
  @override
   void dispose(){
     super.dispose();
     _controllerX.dispose();
     _controllerB.dispose();
     _controllerC.dispose();
   }

  
  String resultadoPrincipal="";
  double _width =350.0;


  Widget inputBox(String label, TextEditingController controllerT){
    return TextField(
      controller: controllerT,
      keyboardType: TextInputType.number,   
      decoration: InputDecoration(labelText: label),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculador de ecuaciones cuadráticas", style: TextStyle(fontSize:16.0),),),
      body: Center(
        child: Column(
          children: [
            Container(
              width: _width,
              child:inputBox("Ingrese valor de x^2", _controllerX),
              ),
              Container(
              width: _width,
              child:inputBox("Ingrese valor de B", _controllerB),
              ),
              Container(
              width: _width,
              child:inputBox("Ingrese valor de C", _controllerC),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child:Text(resultadoPrincipal, style: TextStyle(fontSize:25.0, color:Colors.blue),) ,
              ),
            ElevatedButton(
              onPressed: (){
                double x=double.parse(_controllerX.value.text) ;
                double b=double.parse(_controllerB.value.text) ;
                double c=double.parse(_controllerC.value.text) ;
                if(x!=0) {
                  actualizaRes(r.calculaResult(x,b,c));
                } else
                  actualizaRes("X no puede ser 0");
                /*setState(() {
                  resultado=x+b+c;
                });*/
              }, 
              child: 
              Text("Calcular"))
          ],
        ),
      )
    );
  }

  void actualizaRes(String resultado) {
    setState(() {
      resultadoPrincipal=resultado;
    });
  }
}
