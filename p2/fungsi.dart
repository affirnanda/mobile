int perkalian (int a, int b) {
  return a * b;
}

int pertambahan (int a, int b) => a+b; 


void main (){
  Set<String> data1 = {"nancil", "budi", "susi"};
  Set<String> data2 = {"koclok", "budispeed", "nyanyi"};

  var gabungan = data1.union(data2);
  var irisiannama = data1.intersection(data2);
  var selisihnama = data1.difference(data2);

  print ("Ini data 1: $data1");
  print ("Ini data 2: $data2");
  print ("Gabungan nama: $gabungan");
  print ("Irisan nama: $irisiannama");
  print ("Selisih nama: $selisihnama");

 
//  for (var i = 0; i < gabungan.length; i++){
//    print (gabungan.elementAt(i));
//  }

//  int hasilperkalian = perkalian (2, 2);
// int hasilpertambahan = pertambahan (3, 2);
// print ("$hasilperkalian | $hasilpertambahan");

}