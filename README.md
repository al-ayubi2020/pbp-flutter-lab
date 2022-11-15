# counter_7

# assignment 7

## stateless widget dan stateful widget

Widget stateless adalah widget statis di mana semua konfigurasi yang dikandungnya diinisialisasi dari awal. Widget stateful, di sisi lain, melakukan yang sebaliknya ketika dinamis, memungkinkan mereka untuk memperbarui sesuai permintaan berdasarkan tindakan pengguna atau perubahan data.

## widget yang dipakai

- Floating Button, fungsinya sama seperti button dan memiliki sifat yang berbeda ketika dipencet (manjalankan suatu fungsi).
- text, menampilkan string
- App bar, dapat menampung beberapa informasi

## fungsi dari setState()

Fungsi untuk merubah number pada koding diatas berubah karena adanya fungsi setState(). setState fungsinya untuk memberitahu framework bahwa ada object yang berubah pada State, kemudian akan melakukan build ulang pada Widget tersebut.

## const dan final

final dan const merupakan keyword yang dapat digunakan untuk membuat variabel yang bersifat immutable.
Perbedaan utamanya ada pada inisiasi nilai (pemberian nilai) dari variabelnya, const mengharuskan variabel harus diinisiasi pada saat kompilasi, nilai bersifat konstan dan secara langsung eksplisit sehingga pada saat kompilasi variabel const sudah memiliki nilai, sedangkan final tidak mengharuskan variabel memiliki nilai secara langsung/ekplisit pada saat kompilasi.

## cara mengimplementasikan checklist

1. Buat sebuah proyek flutter beru bernama counter_7 dengan cara `flutter create counter_7`
2. Buat widget berupa floating button dan text ditengahnya.
3. lakukan kondisional pada text.
4. berikan state pada floating button berupa increment dan decrement.
5. Kerjakan bonus dengan melakukan kondisional terhadap floating button.

# assignment 8

## perbedaan `Navigator.push` dan `Navigator.pushReplacement`

Pada flutter, navigasi antar page dilakukan seperti stack. Jadi ketika ingin berpindah page, logic nya akan sama seperti stack. Navigator.push akan menimpa page yang sebelumnya dengan page yang baru. Sehingga page yang baru akan berada di bagian paling atas dari stack. Navigator.pushReplacement mirip seperti push. Akan tetapi alih-alih menambahkan page baru kedalam stack, top of stack akan digantikan (bukan ditimpa) dengan page yang baru.

## widget apa saja yang dipakai

Sebenarnya Banyak sekali, karena memang pada dasarnya flutter dibangun oleh widget-widget yang dipadukan sehingga menghasilkan fitur dan aplikasi yang sesuai. Oleh karena itu, saya hanya memberikan beberapa contoh widget yang tidak terlalu umum saja.

1. Drawer, Adalah sebuah list yang berisi daftar navigasi.
2. TextFormField, Untuk memberikan input bertipe String.
3. DropdownButton, Memberikan list untuk dipilih sebagai input.
4. Datepicker, memilih tanggal untuk diinput kedalam form.
5. Card, merupakan styling bawaan dari material yang akan membentuk sebuah card.

## jenis-jenis event yang ada pada Flutter

ada banyak sekali jenis-jenis event pada Flutter. Banyak hal pada flutter merupakan event oriented. Jadi cari saja pada dokumentasi yang diberikan oleh flutter dan gunakan sesuai dengan keperluan.
Berikut event yang telah digunakan pada project ini sampai sejauh ini:

1. onPressed()
2. onTap()
3. onPresent()
4. onComplete()
5. onChange()
6. onSaved()

## cara kerja `Navigator` dalam "mengganti" halaman dari aplikasi Flutter.

Seperti yang sudah dikatakan diatas. Navigator bekerja layaknya sebuah stack yang menyimpan data berupa page. ketika ingin berpindah halaman, maka halaman baru akan dimasukan kedalam stack dan halaman baru akan menimpa halaman yang sebelumnya. ketika ingin kembali maka akan melakukan oprasi pop sehingga halaman yang sebelumnya muncul kembali.

## cara mengimplementasikan checklist.

Drawer dusah disediakan oleh material seingga tinggal ditambahkan saja kedalam applikasi dan memodifikasinya. Drawer juga sudah dipisahkan menjadi modul yang terpisah dari page sehingga Drawer dapat digunakan kembali ketika membuat page baru.
Dalam melakukan routing, menggunakan Navigator.push() maupun Navigator.pushReplacement().
Form dibuat mengikuti tutorial sebelumnya, yaitu gunakan widget form dan buat dua textfield, dropdownButton, Datepicker dan tombol submit.
Ketika disubmit, objek budget akan dipush kedalam properti static yang ada pada object tersebut.
Untuk menampilkan list dari budget, list dari properti static budget akan di-loop menggunakan `ListView.builder` dan akan masukan kedalam page.
