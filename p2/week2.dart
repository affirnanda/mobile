import 'dart:io';

// Class Mahasiswa
class Mahasiswa {
  String nim;
  String nama;
  String jurusan;

  Mahasiswa(this.nim, this.nama, this.jurusan);
}

// Daftar mahasiswa (disimpan dalam list)
List<Mahasiswa> daftarMahasiswa = [];

// Fungsi untuk menambah mahasiswa
void tambahMahasiswa() {
  stdout.write("Masukkan NIM: ");
  String? nim = stdin.readLineSync();

  stdout.write("Masukkan Nama: ");
  String? nama = stdin.readLineSync();

  stdout.write("Masukkan Jurusan: ");
  String? jurusan = stdin.readLineSync();

  if (nim != null && nama != null && jurusan != null) {
    daftarMahasiswa.add(Mahasiswa(nim, nama, jurusan));
    print("Mahasiswa berhasil ditambahkan!\n");
  } else {
    print("Input tidak valid.\n");
  }
}

// Fungsi untuk menampilkan semua mahasiswa
void tampilkanMahasiswa() {
  print("=== DAFTAR MAHASISWA ===");
  if (daftarMahasiswa.isEmpty) {
    print("Belum ada data mahasiswa.\n");
  } else {
    for (var mhs in daftarMahasiswa) {
      print("NIM: ${mhs.nim} | NAMA: ${mhs.nama} | JURUSAN: ${mhs.jurusan}");
    }
    print("");
  }
}

// Fungsi untuk mencari mahasiswa berdasarkan NIM
void cariMahasiswa() {
  stdout.write("Masukkan NIM yang dicari: ");
  String? nimCari = stdin.readLineSync();

  if (nimCari != null) {
    var hasil = daftarMahasiswa.where((mhs) => mhs.nim == nimCari).toList();
    if (hasil.isNotEmpty) {
      print("Mahasiswa ditemukan!");
      for (var mhs in hasil) {
        print("NIM: ${mhs.nim} | NAMA: ${mhs.nama} | JURUSAN: ${mhs.jurusan}");
      }
    } else {
      print("Mahasiswa dengan NIM $nimCari tidak ditemukan.");
    }
    print("");
  }
}

// Fungsi untuk menghapus mahasiswa berdasarkan NIM
void hapusMahasiswa() {
  stdout.write("Masukkan NIM yang ingin dihapus: ");
  String? nimHapus = stdin.readLineSync();

  if (nimHapus != null) {
    var mhs = daftarMahasiswa.where((m) => m.nim == nimHapus).toList();
    if (mhs.isNotEmpty) {
      daftarMahasiswa.removeWhere((m) => m.nim == nimHapus);
      print("Mahasiswa dengan NIM $nimHapus berhasil dihapus.\n");
    } else {
      print("Mahasiswa dengan NIM $nimHapus tidak ditemukan.\n");
    }
  }
}

// Fungsi utama
void main() {
  while (true) {
    print("=== SISTEM DATA MAHASISWA ===");
    print("1. Tambah Mahasiswa");
    print("2. Tampilkan Semua Mahasiswa");
    print("3. Cari Mahasiswa (berdasarkan NIM)");
    print("4. Hapus Mahasiswa");
    print("5. Keluar");
    stdout.write("Pilih menu: ");
    String? pilihan = stdin.readLineSync();
    print("");

    switch (pilihan) {
      case '1':
        tambahMahasiswa();
        break;
      case '2':
        tampilkanMahasiswa();
        break;
      case '3':
        cariMahasiswa();
        break;
      case '4':
        hapusMahasiswa();
        break;
      case '5':
        print("Program selesai. Terima kasih!");
        return;
      default:
        print("Pilihan tidak valid.\n");
    }
  }
}