import 'dart:math';

class Resultados{
  Resultados();
  String calculaResult(double x, double b, double c) {
    double discriminante=0.0;
    double valAux=0.0, valAux2=0.0;
    String resultado="";
    if(discriminante<0){
      resultado="La ecuación no tiene soluciones reales";
    }else if(discriminante==0){
      valAux=(-b)/(2*x);
      resultado='La solución única es: '+valAux.toString();
    }else{
      valAux=(-b-(sqrt(discriminante)))/(2*x);
      valAux2=(-b+(sqrt(discriminante)))/(2*x);
      resultado='Las dos soluciones reales son: \n x1: '+valAux.toString() + "\n x2: "+valAux2.toString();
    }
    return resultado;
  }

  
}