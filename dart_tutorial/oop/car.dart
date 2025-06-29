class Car {

   String renk;
   int hiz;
   bool calisiyorMu;

   Car({required this.renk,required this.hiz,required this.calisiyorMu});

   void bilgiAl(){
     print("---------");
     print("renk : ${renk}");
     print("hiz : ${hiz}");
     print("calisiyor mu : ${calisiyorMu}");
   }

   void calistir(){ // side effect fonksiyon calısırken clasın değerlerini deigştirdi
     this.calisiyorMu = true;
     this.hiz = 5;
   }

   void durdur(){
     this.calisiyorMu = false;
     this.hiz = 0;
   }

   void hizlan(int hizlan){
     this.hiz +=hizlan;
   }

}
