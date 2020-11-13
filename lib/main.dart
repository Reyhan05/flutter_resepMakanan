import 'package:resep_makanan/DetailPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Nama Makanan'),
      ),
      body: _PageList(),
    );
  }
}

final baseTextStyle = const TextStyle(color: Colors.white, fontFamily: 'arial');
final bigHeaderTextStyle =
    baseTextStyle.copyWith(fontSize: 20.0, fontWeight: FontWeight.bold);
final descTextStyle =
    baseTextStyle.copyWith(fontSize: 15.0, fontWeight: FontWeight.w400);
final footerTextStyle =
    baseTextStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w400);

class _PageList extends StatefulWidget {
  @override
  __PageStateListState createState() => __PageStateListState();
}

class __PageStateListState extends State<_PageList> {
  List<String> judul = [
    "Babat",
    "Bakmi",
    "Ketoprak",
    "Mie aceh",
    "Mie ayam",
    "Mie Goreng",
    "Nasi goreng",
    "Rendang",
    "Sate",
    "Selendang Mayang"
  ];
  List<String> subJudul = [
    "Babat membutuhkan waktu 30 menit untuk memasaknya",
    "Bakmi membutuhkan waktu 20 menit untuk memasaknya",
    "Ketoprak  membutuhkan waktu 10 menit untuk memasaknya",
    "Mie aceh membutuhkan waktu 10 jam  untuk memasaknya",
    "Mie ayam membutuhkan waktu 10 hari  untuk memasaknya",
    "Nasi Goreng membutuhkan waktu 15 Menit untuk memasaknya",
    "Rendang membutuhkan waktu 10 menit untuk memasaknya",
    "Rendang  membutuhkan waktu 6 Jam menit untuk memasaknya",
    "Sate membutuhkan waktu 20 jam untuk Membakarnya",
    "Selendang mayang membutuhkan waktu 10 menit"
  ];
  List<String> gambar = [
    "assets/images/babat.png",
    "assets/images/bakmi.png",
    "assets/images/ketoprak.jpg",
    "assets/images/miaceh.png",
    "assets/images/miayam.png",
    "assets/images/miegoreng.png",
    "assets/images/nasgor.png",
    "assets/images/rendang.png",
    "assets/images/sate.png",
    "assets/images/selendangmayang.png",
  ];

  List<String> jmlh = [
    "30",
    "30",
    "50",
    "20",
    "20",
    "50",
    "35",
    "27",
    "45",
    "10"
  ];

  List<String> bhn = [
    "  - Air \n - Sedikit garam \n -  1 gelas beras putih \n - 1 bungkus Bumbu nasi goreng instan \n  - Topping sesuai selera Sosis, bakso, ayam, telur, sayuran ",
    "  - 300 gram daging sapi \n Secukupnya air \n 1 batang sereh \n 2 lembar daun salam \n 2 lembar daun jeruk \n - 1 ruas lengkuas geprek \n Secukupnya garam dan kaldu sapi bubuk non msg",
    "250 gr daging sandung lamur (potong potong kecil)Lebih enak ditambah kikil2 keping mie urai/basah (rebus, tiriskan,lumuri dg 1 sdm minyak)1/4 bh kol (iris halus)1 btg sereh uk besar3 lbr daun salam2 lbr daun jeruk2 ruas jari jahe (geprek)2 ruas jari lengkuas (geprek)Bumbu halus :7 siung bawang merah5 siung bawang putih4 bh cabe merah keriting2 btr kemiri (sangrai dulu)1/2 sdt merica",
    "700 gram Daging sapi \n1 bungkus Santan Kara 200 ml \n Bumbu Halus : \n 7 Bawang putih / 10 bawang putih \n 8 Buah Cabai merah besar \n     2 ruas jari Jahe segar dan 2 ruas jari kunyit \n     1 sdt Gula pasir",
    "– 1 canned of young jackfruit dan  5 boiled eggs, peeled \n – 50 g palm sugar dan 2 or 3 black tea \n – 100 g brown soya (kacang tolo/kedelai merah) dan  5 Salaam \n 300 ml thick coconut milk or 250 ml coconut water \n 300 ml water",
    "500 Gram Buntut Sapi / Kerbau. \n 1 Buah Wortel. \n 1 Buah Kentang \n 1 Buah Tomat. \n 15 Gram / 1 Sdm Margarin. \n 30 ml / 2 Sdm Minyak Goreng \n 2000 ml Air Mineral.",
    "500 gr Ikan Tenggiri dan 2 butir Bawang Putih \n 120 gr Tepung Sagu dan 60 gr Tepung Terigu \n 300 ml Air dan Garam Lada Gula \n Telur untuk isian",
    "1/2 butir kelapa parut, sangrai hingga kering \n 2 sdm udang rebon goreng \n 1 sdm gula pasir \n 1/2 sdt kaldu jamur bubuk dan \n 1 butir telur1/2 sdt bumbu putih (bawang merah dan putih) 2-3 sdm nasi putih Sejumput garam, lada dan kaldu bubuk",
    "500 gram daging sandung lamur sapi \n lembar daun jeruk purut segar \n sdm air asam jawa \n bungkus Royco Kaldu Sapi \n sdm minyak goreng \n dengkul sapi, belah dua \n batang serai, memarkan",
    "- 500 gr dada ayam, iris panjang \n 8 bh bawang merah siung bawang putih ruas laos \n 1 sdm ketumbar 3 btr kemiri secukupnya gula merah, iris halus"
  ];

  List<String> crMSK = [
    "a. Cuci beras seperti saat akan menanak nasi. Masukkan ke dalam rice cooker, tuang air secukupnya dan tutup. \n  Saat rice cooker mulai mengeluarkan asap (belum matang), buka rice cooker lalu masukkan sebungkus bumbu nasi goreng instan. Tambahkan bahan pelengkap lainnya seperti sosis, bakso, daging, sayuran, dan sedikit garam. Aduk hingga merata",
    "- Rebus daging, buang air rebusan hingga air bening (tidak ada kotoran yang mengambang). Rebus hingga daging empuk.\n - Tumis bumbu halus dengan sereh, daun salam dan lengkuas. Masukan daging dan air rebusan daging sedikit demi sedikit hingga habis. \n - Kemudian masukkan daun jeruk. Tambahkan garam dan penyedap rasa. - Koreksi rasa. Setelah matang, angkat dan sajikan dengan pelengkap daun bawang, emping, tomat dan kentang goreng",
    "Tumis bumbu halus sampai harum, masukkan lengkuas, jahe, sereh, daun salam dan daun jeruk. Matikan kompor.\n Pindahkan bumbu yg sudah ditumis tadi kedalam panci (saya panci presto), masukkan daging dan beri air secukupnya. Rebus sampai daging empuk. \n Tata dimangkok secukupnya mie dan kol. Siram dg kuah soto, tabur dan sajikan dg bahan pelengkap.",
    "Cuci bersih daging sapi, potong2 daging lawan serat supaya tidak alot ya..potong dengan lebar ±1cm.. Pukul serat daging dengan ulekan pelan2 saja. Sisihkan \n Siapkan bahan bumbu halus,, bisa pakai blender atau di uleg sendiri \n Tumis bumbu halus + daun salam + daun jeruk + serai + laos.  \n Masukkan santan kara yang sudah di campur dengan air 1 liter \n Masukkan santan kara yang sudah di campur dengan air 1 liter ",
    "1. Grind or blend the spice paste. \n 2. Boil the brown soya until it’s tender. Set aside \n 3. Cook young jackfruit into 300 ml water, together with tea until the water turn brown \n 4. Take out the tea from the broth. Then add the spice paste,  eggs, palm sugar, salaam leaves and galangal. Cook until the aroma come out  fragrant.5. Add the coconut milk, brown soya and salt. Cooked until the sauce is absorbed.",
    "Langkah 1 – Persiapan Bahan \n Langkah 2 Siapkan talenan, lalu potong-potong bahan yang dibutuhkan: \n Langkah 3 – Mengempukan Daging \n Langkah 4 – Tumis Bumbu \n Langkah 5 – Setelah Daging Empuk \n Langkah 6 – Penyajian",
    "Haluskan Ikan Tenggiri dan bawang putih, tambahkan air \n Masukkan ikan yang telah dihaluskan tadi ke dalam mangkuk besar, tambahkan tepung terigu, tepung sagu, lada, gula, garam dan air. Aduk hingga rata. \n Bentuk menyerupai kantong lalu isikan dengan telur.Rebus hingga pempek mengapung sekitar 20 menit.Angkat dan tiriskan hingga pempek tidak banyak mengandung air.",
    "Bubuk kelapa rebon : sangrai kelapa parut, hingga garing kecoklatan, \n Kocok telur, nasi, garam, lada, kaldu, bumbu putih dan 2 sdt bubuk kelapa rebon hingga rata. \n Tuang kedalam teflon ratakan, masak hingga bawahnya agak gosong dan berkerak, balik lakukan juga hingga agak gosong. Angkat \n Taburi dengan 2 sdt kelapa rebon dan 1 sdt bawang goreng, siap dinikmati selagi hangat",
    "Rebus daging dan dengkul sapi hingga setengah lunak. Potong daging sesuai selera. Sisihkan. \n Masukkan Royco Kaldu Sapi ke dalam air rebusan daging. \n Tumis bumbu halus, lengkuas, daun jeruk, dan serai hingga harum dan matang. Masukkan potongan daging ke dalam tumisan, masak hingga bumbu meresap. \n Masukkan tumisan daging ke dalam kuah kaldu. Masak dengan api kecil hingga daging empuk. Sajikan hangat beserta pelengkap.",
    "- Haluskan semua bumbu. \n - Campur bumbu halus ke irisan ayam, biarkan meresap minimal 15 menit atau didiamkan semalaman di kulkas \n - Cuci lidi sate, tusuk daging ayam dengan tusuk sate. Bakar sambil dioles campuran margarin dan kecap manis. \n - Bolak balik satenya, sampai matangnya merata. Sajikan."
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: judul.length,
        itemBuilder: (BuildContext context, int index) {
          final title = judul[index].toString();
          final subTitle = subJudul[index].toString();
          final jumlah = jmlh[index].toString();
          final bahan = bhn[index].toString();
          final cara = crMSK[index].toString();
          final img = gambar[index].toString();

          return Container(
            height: 200.0,
            padding: EdgeInsets.only(left: 8.0, top: 8.0),
            child: GestureDetector(
                child: Stack(
                  children: <Widget>[
                    backgroundImage(img),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: topContent(title, subTitle, jumlah),
                      ),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPage(
                                itemJudul: title,
                                itemSub: subTitle,
                                qty: jumlah,
                                itemBahan: bahan,
                                itemCara: cara,
                                itemImage: img,
                              )));
                }),
          );
        },
      ),
    );
  }

  backgroundImage(String gambar) {
    return new Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.luminosity),
              image: AssetImage(gambar))),
    );
  }

  topContent(String nama, String deksripsi, String stok) {
    return new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            nama,
            style: bigHeaderTextStyle,
          ),
          Text(
            deksripsi,
            style: descTextStyle,
            textAlign: TextAlign.left,
          ),
          Container(
            height: 2.0,
            width: 80.0,
            color: Colors.blue,
          ),
          Text(
            stok,
            style: footerTextStyle,
          ),
        ],
      ),
    );
  }
}
