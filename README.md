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
