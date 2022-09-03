void main() async {
  print("pembeli datang ke kedai");
  print("penjual melayani pembeli");
  print('Pembeli Minta Menu');
  menu();
  try {
    await order("kentang goreng");
    print("");
  } catch(error) {
    print(error);
  }

  print ("======================================\n");

  print("pembeli datang ke kedai");
  print("penjual melayani pembeli");
  print("pembeli meminta menu");
  menu();
  try {
    await order("es boba");
    print("pembeli manikmati pesanan");
  } catch(e) {
    print(e);
  }
}

listMenu() {
  var listMenu = ['roti bakar', 'kentang goreng', 'es teh', 'kopi'];
  return listMenu;
}

void menu() {
  var no = 1;
  print("====== Menu ======");
  for (var i in listMenu()) {
    print("${no++}. $i");
  }
  print('');
}

Future<void> order(String pesanan) async {
  print("anda memesan $pesanan");
  print("penjual menyiapkan pesanan");
  if (listMenu().contains(pesanan)) {
    return Future.delayed(Duration(seconds: 5), () {
        print("\n$pesanan telah selesai dibuat");
        print("penjual memberikan pesanan ke pembeli");
        print("selamat menikmati\n");
      }
    );
  } else {
    throw ("maaf, $pesanan tidak ada dalam menu");
  }
}
