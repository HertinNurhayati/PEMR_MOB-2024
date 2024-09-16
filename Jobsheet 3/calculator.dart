import 'dart:io';

void main() {
  print("==============================================");
  print("\tProgram Kalkulator Sederhana");
  print("==============================================");

  // Input pertama
  stdout.write("Masukkan angka pertama: ");
  double num1 = double.parse(stdin.readLineSync()!);

  // Input kedua
  stdout.write("Masukkan angka kedua: ");
  double num2 = double.parse(stdin.readLineSync()!);

  // Memilih operasi
  print("Pilih operasi: ");
  print("1. Tambah (+)");
  print("2. Kurang (-)");
  print("3. Kali (*)");
  print("4. Bagi (/)");

  stdout.write("Masukkan pilihan (1/2/3/4): ");
  String? choice = stdin.readLineSync();

  double result = 0;

  switch (choice) {
    case '1':
      result = num1 + num2;
      print("Hasil: $num1 + $num2 = $result");
      break;
    case '2':
      result = num1 - num2;
      print("Hasil: $num1 - $num2 = $result");
      break;
    case '3':
      result = num1 * num2;
      print("Hasil: $num1 * $num2 = $result");
      break;
    case '4':
      if (num2 != 0) {
        result = num1 / num2;
        print("Hasil: $num1 / $num2 = $result");
      } else {
        print("Error: Tidak bisa membagi dengan nol.");
      }
      break;
    default:
      print("Pilihan operasi tidak valid.");
  }

  print("==============================================");
}
