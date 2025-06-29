void main(){

  for(var i = 1 ; i < 4 ; i++){
    print(i);
  }

  for(var i = 10 ; i <= 20 ; i+=5){
    print(i);
  }

  var z = 5;

  while(z<20){
    print(z);
    z +=3;
  }

  for(var i = 1 ;i<6 ; i++  ) {
    if(i==3){
      break;
    }
    print(i);
  }

  for(var i = 1 ;i<6 ; i++  ) {
    if(i==3){
      continue;
    }
    print(i);
  }
}