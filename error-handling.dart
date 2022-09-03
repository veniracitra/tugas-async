void main() async {
  print("Toko Alat Tulis Baru");
  print("====================");
  try {
    await order("Buku");
    print("Item telah ditambahkan");
  } catch (e) {
    print(e);
  }

  print("\n---------------------------\n");

  print("Tambah Item");
  try {
    await order("Pensil");
  } catch (e) {
    print(e);
  }
}

Future<void> order(String pesanan) async {
  List<String> menu = ["Buku", "Pensil", "Penghapus"];
  print("\n$pesanan Telah ditambahkan");
  if (menu.contains(pesanan)) {
    return Future.delayed(Duration(seconds: 4), () {
      print("\nMenambahkan $pesanan ");
    });
  } else {
    throw ("maaf, yang anda pesan tidak tersedia");
  }
}
