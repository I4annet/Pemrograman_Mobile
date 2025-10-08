void main() {
  String nama = "Ivansyah Eka Oktaviadi Santoso";
  String nim = "2341720126";

  for (int i = 2; i <= 201; i++) {
    if (isPrime(i)) {
      print("$i adalah bilangan prima");
      print("Nama: $nama");
      print("NIM: $nim\n");
    }
  }
}

bool isPrime(int number) {
  if (number < 2) return false;
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}