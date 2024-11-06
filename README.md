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

Pertanyaan dan Jawaban
1. Jelaskan apa yang dimaksud dengan Stateless Widget dan Stateful Widget, serta perbedaan dari keduanya.

Jawab:

    StatelessWidget adalah widget untuk tampilan yang tidak dapat berubah. Contoh: teks yang bersifat statis seperti font.
    StatefulWidget adalah widget untuk tampilan yang dapat berubah, contohnya seperti waktu yang berubah-ubah, teks pada text field untuk komentar, dan elemen-elemen lainnya yang bisa berubah.

2. Widget yang Digunakan pada Proyek Ini dan Fungsinya

Jawab:

    StatelessWidget: Digunakan untuk title pada main.dart, tema ColorScheme.fromSwatch dengan warna primarySwatch dan secondary, serta untuk info card yang menampilkan informasi seperti NPM, nama, kelas, itemHomepage, dan teks "welcome to konohapedia" serta "Kamu telah menekan tombol".

3. Apa Fungsi dari setState()? Jelaskan Variabel Apa Saja yang Terpengaruh oleh Fungsi Ini.

Jawab:
setState berfungsi untuk mengupdate tampilan baru dari variabel ketika variabel tersebut mengalami perubahan. Variabel yang bisa berubah adalah variabel yang berada dalam State dan akan menyebabkan render ulang pada UI jika dipanggil dengan setState().
4. Jelaskan Perbedaan antara const dengan final.

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
            

            