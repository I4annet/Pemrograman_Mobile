1. Jelaskan yang dimaksud Functions dalam bahasa Dart! 

**Jawaban** : Function adalah blok kode yang digunakan untuk menjalankan tugas tertentu dan bisa dipanggil berkali-kali.

2. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya! 

**Jawaban** : 
##  a. Required Positional Parameter

Parameter **wajib diisi** sesuai urutan saat pemanggilan function.

```dart
void tambah(int a, int b) {
  print(a + b);
}

void main() {
  tambah(5, 3); // Output: 8
}
```

## b. Optional Positional Parameter

Parameter yang dibungkus dengan [] bersifat opsional.
Artinya, parameter ini boleh diisi atau tidak saat function dipanggil.

```dart
void sapa([String? nama]) {
  print('Halo ${nama ?? "pengguna"}');
}

void main() {
  sapa();        // Output: Halo pengguna
  sapa('Ivan');  // Output: Halo Ivan
}
```
## c. Named Parameter
Parameter yang disebutkan berdasarkan nama, bukan urutan.
Biasanya dibungkus dengan {} agar lebih mudah dibaca.

```dart
void info({String? nama, int? umur}) {
  print('Nama: $nama, Umur: $umur');
}

void main() {
  info(nama: 'Ivan', umur: 21);
}
```

## d. Default Parameter Value

Kita bisa memberi nilai default jika parameter tidak diisi oleh pengguna.

```dart
void sapa({String nama = 'Tamu'}) {
  print('Halo, $nama!');
}

void main() {
  sapa();            // Output: Halo, Tamu!
  sapa(nama: 'Ivan'); // Output: Halo, Ivan!
}
```

3. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya! 

**Jawaban** : 
Function dapat diperlakukan seperti variabel — disimpan dalam variabel, dikirim sebagai argumen, atau dikembalikan dari function lain. Contohnya :

```dart
void cetakPesan() {
  print('Halo dari function!');
}

void jalankan(Function f) {
  f(); // memanggil function yang diteruskan
}

void main() {
  var fungsi = cetakPesan; // disimpan ke variabel
  jalankan(fungsi);        // Output: Halo dari function!
}
```

4. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya! 

**Jawaban** : 
Anonymous function adalah function tanpa nama (kadang disebut lambda atau inline function).
Biasanya digunakan saat function hanya dipakai sekali. Contohnya : 
```dart
void main() {
  var daftar = ['A', 'B', 'C'];

  // Anonymous function dalam forEach
  daftar.forEach((item) {
    print('Huruf: $item');
  });
}
```

5. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!

**Jawaban** : 

## a. Lexical Scope

Lexical scope berarti variabel hanya bisa diakses di dalam scope (cakupan kode) tempat variabel tersebut didefinisikan.
```dart
void main() {
  var nama = 'Ivan';

  void sapa() {
    print('Halo, $nama'); // Bisa mengakses 'nama' dari scope luar
  }

  sapa(); // Output: Halo, Ivan
}
```

Variabel nama berada di luar function sapa, tetapi tetap bisa diakses karena berada dalam lexical scope.

## b. Lexical Closures

Closure adalah function yang menyimpan referensi ke variabel di luar scope-nya, sehingga variabel itu tetap hidup meski scope luar sudah selesai dieksekusi.

```dart
Function buatCounter() {
  int hitung = 0;

  // Closure
  return () {
    hitung++;
    return hitung;
  };
}

void main() {
  var counter = buatCounter();
  print(counter()); // 1
  print(counter()); // 2
  print(counter()); // 3
} 
```
Function counter menyimpan dan memperbarui nilai hitung meski buatCounter() sudah selesai dieksekusi — inilah closure.

6. Jelaskan dengan contoh cara membuat return multiple value di Functions!

**Jawaban** :
Dart tidak mendukung pengembalian lebih dari satu nilai secara langsung, tapi kita bisa:

## a. Menggunakan List:
``` dart
List<int> hitung(int a, int b) {
  return [a + b, a - b];
}

void main() {
  var hasil = hitung(10, 5);
  print('Tambah: ${hasil[0]}, Kurang: ${hasil[1]}');
}
```
## b. Menggunakan Map:
``` dart
Map<String, int> hitung(int a, int b) {
  return {'tambah': a + b, 'kurang': a - b};
}

void main() {
  var hasil = hitung(10, 5);
  print('Tambah: ${hasil['tambah']}, Kurang: ${hasil['kurang']}');
}
```

## c. Menggunakan Record (fitur Dart 3):
``` dart
(int tambah, int kurang) hitung(int a, int b) {
  return (a + b, a - b);
}

void main() {
  var (t, k) = hitung(10, 5);
  print('Tambah: $t, Kurang: $k');
}
```