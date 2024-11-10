# konohapedia_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.





Tugas 7

## Pertanyaan dan Jawaban
### 1. Jelaskan apa yang dimaksud dengan Stateless Widget dan Stateful Widget, serta perbedaan dari keduanya.
```
Jawab:

    StatelessWidget adalah widget untuk tampilan yang tidak dapat berubah. Contoh: teks yang bersifat statis seperti font.
    StatefulWidget adalah widget untuk tampilan yang dapat berubah, contohnya seperti waktu yang berubah-ubah, teks pada text field untuk komentar, dan elemen-elemen lainnya yang bisa berubah.
```

### 2. Widget yang Digunakan pada Proyek Ini dan Fungsinya
```
Jawab:

    StatelessWidget: Digunakan untuk title pada main.dart, tema ColorScheme.fromSwatch dengan warna primarySwatch dan secondary, serta untuk info card yang menampilkan informasi seperti NPM, nama, kelas, itemHomepage, dan teks "welcome to konohapedia" serta "Kamu telah menekan tombol".
```

### 3. Apa Fungsi dari setState()? Jelaskan Variabel Apa Saja yang Terpengaruh oleh Fungsi Ini.
```
Jawab:
setState berfungsi untuk mengupdate tampilan baru dari variabel ketika variabel tersebut mengalami perubahan. Variabel yang bisa berubah adalah variabel yang berada dalam State dan akan menyebabkan render ulang pada UI jika dipanggil dengan setState().
```

### 4. Jelaskan Perbedaan antara const dengan final.
```
Jawab:

    final adalah variabel yang tidak bisa diubah setelah dideklarasikan. Contoh: waktu, tanggal, bulan, dan tahun.
    const digunakan untuk nilai variabel yang sudah diketahui dan bersifat konstan, seperti nilai π (pi).

Implementasi Checklist

Berikut adalah langkah-langkah implementasi checklist:
Langkah 1: Mengubah Tema Warna Aplikasi

    Buka file main.dart.
    Temukan MaterialApp, lalu sesuaikan dengan kode berikut untuk tema colorScheme:

    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.blueGrey,
    ).copyWith(secondary: Colors.blueGrey[900]),

Langkah 2: Mengubah Sifat Widget Halaman Menu Menjadi Stateless

    Pada main.dart, hapus const dari MyHomePage(title: 'Flutter Demo Home Page') sehingga menjadi MyHomePage().
    Pada menu.dart, ubah MyHomePage dari StatefulWidget menjadi StatelessWidget:
        Hapus const MyHomePage(...), final String title;, State<MyHomePage> createState(), dan seluruh class _MyHomePageState.
        Tambahkan MyHomePage({super.key}); sebagai constructor.
        Buat fungsi build() dengan struktur Scaffold.

Langkah 3: Membuat Card Sederhana yang Berisi NPM, Nama, dan Kelas

    Pada menu.dart, deklarasikan variabel npm, name, dan className di dalam MyHomePage.
    Buat InfoCard sebagai widget StatelessWidget yang menerima title dan content untuk menampilkan informasi.

Langkah 4: Membuat Button Card Sederhana dengan Icon

    Buat class ItemHomepage di menu.dart untuk menyimpan name dan icon.
    Tambahkan list items di MyHomePage untuk daftar tombol.
    Buat class ItemCard untuk menampilkan name dan icon, serta menampilkan SnackBar saat tombol ditekan.

Langkah 5: Mengintegrasikan InfoCard dan ItemCard di MyHomePage

    Pada build() di MyHomePage, susun layout dengan Scaffold:
        Gunakan Row untuk menampilkan tiga InfoCard secara horizontal.
        Tambahkan teks sambutan dan GridView.count untuk menampilkan ItemCard dari list items.
```         




# Tugas 8

### 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
    ```
    Jawab:
        const itu berarti compile time constant yang dimana suatu nilai yang tetap atau tidak bisa diubah lagi, kegunaan const ketika sebuah widget atau objek dideklarasikan dengan const, itu menandakan bahwa widget atau objek tersebut sudah tidak dapat diubah atau hasilnya sudah tetap, const juga dapat memanggil objek yang sudah ada tanpa harus membuat ulang objek tersebut. Keuntungan dari const adalah dapat menghemat memori karena bisa memanggila objek yang sudah dibuat, dapat mendeteksi error. Kapan sebaiknya menggunakan const ketika memanggil objek yang tidak bisa diubah atau sudah tetap seperti stateless widget (judul, nama, teks ikon dan lain-lain). Kapan sebaiknya tidak menggunakan const ketika ada objek atau widget yang bisa berubah-ubah nilainya seperti stateful widget (kolom komentar, waktu, dan lain-lain).
    ```

### 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
    ```
    Jawab:
        Column dan Row pada Flutter adalah widget yang digunakan untuk tata letak widget anak secara vertikal dan horizontal. Perbandingan antara keduanya adalah Column untuk vertikal dan row untuk horizontal, jika konten banyak, bisa dibungkus dengan SingleChildScrollView untuk menghindari overflow. 
        Contoh pengimplementasian sebagai berikut:
            Row (
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Icon(icons.list),
                    Icon(icons.shopping_bag),
                    Icon(icons.logout),
                ],
            );

            Column (
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text("Produk 1"),
                    Text("Produk 2"),
                    Text("Produk 3"),
                ],
            );
    ```

### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
    ```
    Jawab:
        Pada tugas kali ini saya menggunakan form yang diperlukan di tugas 8 seperti form name, amount, dan description, saya juga menambahkan satu form yaitu price.
            - name -> memiliki tipe data String agar user dapat menginput nama produknya
            - amount -> memiliki tipe data integer agar user dapat menginput jumlah dari produknya
            - description -> memiliki tipe data String agar user dapat menginput deskripsi dari produknya
            - price -> memiliki tipe data double agar user dapat mengimput harga dair produknya 
    ```

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

    ```
    Jawab:
        - backgroundColor: Theme.of(context).colorScheme.primary, -> kode tersebut untuk mengatur warna background appbar di menu.dart menggunakan primary, primary berarti warna utama yang digunakan 

        - @override
        Widget build(BuildContext context) {
            return Scaffold(
            appBar: AppBar(
                title: const Center(
                child: Text(
                    'Form Tambah Product Kamu Hari ini',
                ),
                ),
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Colors.white,
                ),
            ),
        }

        kode tersebut untuk mengatur warna backround appbar di productentry_form.dart menggunakan primary theme, menggunakan primary theme agar tetap konsisten warnanya

        - Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                          Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ),
            ),

            kode tersebut untuk mengatur warna tombol "save" di productentry_form.dart agar warnanya tetap konsisten jadi menggunakan primary

        - children: [
          DrawerHeader(
            // TODO: Bagian drawer header
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
                ),
            ),
          ],

          potongan kode tersebut juga untuk mengatur warna dari header left_drawer agar tetap konsisten menggunakan primary theme

        -  // Menentukan warna latar belakang dari tema aplikasi.
           color: Theme.of(context).colorScheme.primary,
           // Membuat sudut kartu melengkung.
           borderRadius: BorderRadius.circular(12),

           potongan kode tersebut untuk mengatur warna dari itemCardnya agar tetap konsisten tetap menggunakan primary

        -  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey,).copyWith(primary: Colors.blueGrey[900], secondary: Colors.     blueGrey),

           potongan kode tersebut adalah parent warna utama yang sudah ditetapkan dan dapat diwariskan ke childrennya
    ```

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
    ```
    Jawab:
        - menggunakan navigator push/pop untuk membukan dan menutup suatu halaman
        - menggunakan Push Replacement untuk menghapus route yang sedang ditampilkan kepada pengguna dan menggantinya dengan suatu route




        





        
