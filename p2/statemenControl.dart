void main(){
  int nilai = 85;

  if (nilai >= 90) {
    print("Nilai A");
  } else if (nilai >= 80) {
    print("Nilai B");
  } else if (nilai >= 70) {
    print("Nilai C");
  } else if (nilai >= 60) {
    print("Nilai D");
  } else {
    print("Nilai E");
  }
   if (nilai >= 60) {
    print("Lulus");
  } else {
    print("Tidak Lulus");
  } 
  print ('Nilai anda: ${nilai >= 60 ? "Lulus" : "Tidak Lulus"}');
} 
