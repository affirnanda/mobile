import 'dart:io';

class Mahasiswa {
  String nim;
  String nama;
  String jurusan;

  Mahasiswa (this.nim, this.nama, this.jurusan);
}

List <Mahasiswa> daftarmahasiswa = [];



void TambahMahasiswa(){
 stdout.write ("Masukan NIM: ");
 String? nim = stdin.readLineSync();
  
  stdout.write ("Masukan NAMA: ");
  String? nama = stdin.readLineSync();
  
  stdout.write ("Masukan JURUSAN: ");
  String? jurusan = stdin.readLineSync();
 
 if (nim != null && nama != null && jurusan != null){
   daftarmahasiswa.add(Mahasiswa(nim, nama, jurusan));
   print ("Mahasiswa dengan NIM: $nim, NAMA: $nama, JURUSAN: $jurusan telah ditambahkan.");
 } else {
   print ("Input tidak valid. Mahasiswa gagal ditambahkan.");
 }
}

void TampilMahasiswa(){
  print ("Daftar Mahasiswa:");
  if (daftarmahasiswa.isEmpty){
    print ("Tidak ada data mahasiswa.");
  } else {
    for (var mhs in daftarmahasiswa){
      print ("NIM: ${mhs.nim}, NAMA: ${mhs.nama}, JURUSAN: ${mhs.jurusan}");
    }
    print ("");
  }
}

void CariMahasiswa(){
  print ("Masukan NIM mahasiswa yang akan dicari: ");
  String? cariNim = stdin.readLineSync();
  bool found = false;
  for (var mhs in daftarmahasiswa){
    if (mhs.nim == cariNim){
      print ("NIM: ${mhs.nim}, NAMA: ${mhs.nama}, JURUSAN: ${mhs.jurusan}");
      found = true;
      break;
    }
  }
  if (!found){
    print ("Mahasiswa dengan NIM $cariNim tidak ditemukan.");
  }
}

void HapusMahasiswa(){
  print ("Masukan NIM mahasiswa yang akan dihapus: ");
  String? hapusNim = stdin.readLineSync();
  daftarmahasiswa.removeWhere((mhs) => mhs.nim == hapusNim);
  print ("Mahasiswa dengan NIM $hapusNim telah dihapus.");
}


void main(){
  while (true){
  print ("=== SISTEM DATA MAHASISWA ===");
  print ("1. TAMBAH MAHASISWA");
  print ("2. TAMPILKAN MAHASISWA");
  print ("3. CARI MAHASISWA");
  print ("4. HAPUS MAHASISWA");
  print ("5. KELUAR");
  stdout.write ("PILIH MENU> ");
  String? pilihan = stdin.readLineSync();
  print ("=============================");

  switch (pilihan){
    case "1":
      TambahMahasiswa();
      break;
    case "2":
      TampilMahasiswa();
      break;
    case "3":
      CariMahasiswa();
      break;
    case "4":
      HapusMahasiswa();
      break;
    case "5":
      print ("Terima kasih telah menggunakan program ini.");
      return;
    default:
      print ("Pilihan tidak valid. Silakan coba lagi.");
  }

}
}

