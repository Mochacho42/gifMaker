Class Frog() {
  int tonguelength;
  Frog(tempTonguelength) {
    tonguelength = tempTonguelength;
  }  
}

Frog f;

void setup() {
  f =  new Frog(100);
  print(f);
}
