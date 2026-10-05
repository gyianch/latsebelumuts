import 'dart:io';
void main() {
   void tampilmenu() {
    print("===================================");
    print("Pilih salah satu dari menu dibawah:");
    print("Menu 1: Cek Saldo");
    print("Menu 2: Setor Tunai");
    print("Menu 3: Tarik Tunai");
   
  }
   void tampilmenu1() {
    print("===================================");
    print("Bank Serba Ada");
    print("===================================");
    stdout.write("Masukkan PIN anda: ");
  }
  
  var jalan1 = true;
  var jalan = false;
  var saldo = 0;
  var tarik = 0;
  var tarik100 = 0;
  var tarik50 = 0;
   var sisa = 0;
  while (jalan1 == true) {
  tampilmenu1();

   var input = stdin.readLineSync()!;
     var pin = "112233";
   if (input == pin) {
      jalan = true;
     
   jalan1 = false;
    } else {
      print("===================================");
      print("Pin Anda Salah");
    
    jalan1 = true;
    }
    }
  while (jalan == true) {
    tampilmenu();
     stdout.write("Masukkan Menu yang dipilih(1/2/3): ");
    var input1 = stdin.readLineSync()!;
  
    if (input1 == "1") {
      print('Total Saldo Anda: $saldo');
    }
   if (input1 == "2"){
       print("===================================");
stdout.write("Masukkan Jumlah yang akan disetor: ");
 var input2 = stdin.readLineSync()!;
    saldo = saldo + int.parse(input2);
    }
   
     if(input1 == "3") {
       print("===================================");
stdout.write("Masukkan Jumlah yang akan ditarik: ");
 var input3 = stdin.readLineSync()!;
 print("1.Pecahan 100000");
 print("2.Pecahan 50000");
 stdout.write("Tentukan Pecahan Yang Akan Dipilih: ");
 var input4 = stdin.readLineSync()!;
 tarik = int.parse(input3);
 if (input4 == "1") {
if ((int.parse(input3) % 100000 == 0)){
tarik100 = (int.parse(input3) ~/ 100000);
tarik - 100000 * tarik100;
saldo = saldo - int.parse(input3);
print("Pecahan 100000: $tarik100");
}else if ((int.parse(input3) % 100000 != 0)){
tarik100 = (int.parse(input3) ~/ 100000);
sisa = saldo - tarik100 * 100000;
tarik50 = (sisa ~/ 50000);
sisa = sisa - tarik50 * 50000;
saldo = saldo - int.parse(input3);
print("Pecahan 100000: $tarik100");
print("Pecahan 50000: $tarik50");
 }
    } else if (input4 == "2") {
      tarik50 = (int.parse(input3) ~/ 50000);
tarik - 50000 * tarik100;
saldo = saldo - int.parse(input3);
print("Pecahan 50000: $tarik50");
    }
    
 }
}
}

    
  
    
  
  


// Map => array yang memiliki key dan value
  // Map datamhs = {'nama': 'Ferry', 'umur': 30, 'Kelas' : 'A'};
  // // print(datamhs.values.elementAt(2)); or below for the easier one
  // print(datamhs['Kelas']);

//  for (var i = 0; i < data.length; i++) {
//   print('${data[i]['name']} | ${data[i]['email']}');
//   print('--------------');
// 