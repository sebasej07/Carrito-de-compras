import 'package:get/get.dart';


class ControlCarrito extends GetxController{
  var tennis = 0.obs ;
  var camisa = 0.obs ;
  var resultado = 0.obs ;

  get total => tennis.value;
  get totalc => camisa.value;
  get sumatotal => resultado.value;

    void aumentar(int sel){
      if (sel==1){tennis.value = tennis.value + 1; suma(); }
      else if (sel == 2){camisa.value = camisa.value + 1; suma();}
  }

  void disminuir(int sel){
    if (sel==1){tennis.value = tennis.value - 1; suma(); }
      else if (sel == 2){camisa.value = camisa.value - 1; suma();}
  }

  void suma(){
    resultado.value = (tennis.value*120) + (camisa.value*18);

  }

  

    

  

}