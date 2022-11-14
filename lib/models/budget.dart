class Budget {
  final String judul;
  final int nominal;
  final String tipe;
  final String tanggal;
  static List<Budget> data = [];

  Budget(
      {required this.judul,
      required this.nominal,
      required this.tipe,
      required this.tanggal});
}
