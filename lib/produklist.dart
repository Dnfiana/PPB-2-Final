import 'package:flutter/material.dart';
//import terlebih dahulu halaman yang diperlukan
import './detailproduk.dart';

class ProdukList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appbar
        appBar: AppBar(backgroundColor: Color.fromARGB(255, 8, 17, 72), title: Text("Produk")),
        //body untuk content
        //menampilkan list
        body: ListView(
          shrinkWrap: true,
          //padding
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          //anggota dari list berupa widget children
          children: <Widget>[
            //GestureDetector untuk menangani gesture pengguna
            new GestureDetector(
              //listener  berupa klik 1x
              onTap: () {
                //navigator.push  untuk berpindah halaman
                Navigator.of(context).push(new MaterialPageRoute(
                  //pemanggilan class DetailProduk beserta pengiriman detail produk
                  builder: (BuildContext context) => DetailProduk(
                    name: "Bumi",
                    description: "Novel Bumi adalah buku pertama dari serial Bumi karya TERE LIYE yang diterbitkan pertama kali oleh Penerbit Gramedia Pustaka Utama pada tahun 2014.",
                    harga: 103000,
                    image: "1bumi.jpeg",
                    star: 4,
                  ),
                ));
              },
              //memanggil class Productbox
              child: ProductBox(
                  //berisi parameter yang diperlukan di class ProductBox
                  name: "Bumi",
                  description: "Novel pertama dari serial Bumi",
                  harga: 95000,
                  image: "1bumi.jpeg",
                  star: 4),
            ),
            new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "Bulan",
                      description: "Novel ini pertama kali diterbitkan pada tahun 2015 oleh Penerbit Gramedia Pustaka Utama.",
                      harga: 95000,
                      image: "2bulan.jpeg",
                      star: 4,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "Bulan",
                    description: "Novel kedua dari serial Bumi, yaitu Bulan.",
                    harga: 95000,
                    image: "2bulan.jpeg",
                    star: 4)),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "Matahari",
                    description: "Matahari merupakan novel ketiga dari serial Bumi yang pertama kali terbit pada tahun 2016 oleh Penerbit Gramedia Pustaka Utama.",
                    harga: 95000,
                    image: "3matahari.jpeg",
                    star: 4,
                  ),
                ));
              },
              child: ProductBox(
                  name: "Matahari",
                  description:
                      "Novel ketiga dari serial Bumi",
                  harga: 95000,
                  image: "3matahari.jpeg",
                  star: 4),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "Bintang",
                    description: "Novel Tere Liye dari serial Bumi yang keempat ialah berjudul Bintang. Novel dengan tebal 392 halaman ini, pertama kali diterbitkan oleh Penerbit Gramedia Pustaka Utama pada tahun 2017.",
                    harga: 105000,
                    image: "4bintang.jpeg",
                    star: 4,
                  ),
                ));
              },
              child: ProductBox(
                  name: "Bintang",
                  description: "Novel keempat dari serial Bumi",
                  harga: 105000,
                  image: "4bintang.jpeg",
                  star: 4),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "Ceros dan Batozar",
                    description: "Novel Ceros dan Batozar merupakan novel ke-4 ½ dari serial Bumi. Bisa dikatakan bahwa novel ini adalah spin-off sebelum masuk ke konflik utama. Ceros dan Batozar terbit pada Mei tahun 2018",
                    harga: 105000,
                    image: "5ceros.jpeg",
                    star: 5,
                  ),
                ));
              },
              child: ProductBox(
                name: "Ceros dan Batozar",
                description: "Novel ke 4 ½ dari serial Bumi",
                harga: 105000,
                image: "5ceros.jpeg",
                star: 5,
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "Komet",
                    description: "Komet adalah novel kelima dari serial Bumi, terbit pada tahun Mei 2018 lalu oleh Penerbit Gramedia Pustaka Utama.",
                    harga: 105000,
                    image: "6komet.jpeg",
                    star: 5,
                  ),
                ));
              },
              child: ProductBox(
                name: "Komet",
                description: "Novel kelima dari serial Bumi",
                harga: 105000,
                image: "6komet.jpeg",
                star: 5,
              ),
            ),
          ],
        ));
  }
}

//menggunakan widget StatelessWidget
class ProductBox extends StatelessWidget {
  //deklarasi variabel yang diterima dari MyHomePage
  ProductBox(
      {Key key, this.name, this.description, this.harga, this.image, this.star})
      : super(key: key);
  //menampung variabel yang diterima untuk dapat digunakan pada class ini
  final String name;
  final String description;
  final int harga;
  final String image;
  final int star;
  final children = <Widget>[];

  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.deepOrange,
      ));
    }
    //menggunakan widget container
    return Container(
        //padding
        padding: EdgeInsets.all(10),
        // height: 120,
        //menggunakan widget card
        child: Card(
            //membuat tampilan secara horisontal antar image dan deskripsi
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //children digunakan untuk menampung banyak widget
                children: <Widget>[
              Image.asset(
                "assets/appimages/" + image,
                width: 150,
              ),
              Expanded(
                  //child digunakan untuk menampung satu widget
                  child: Container(
                      padding: EdgeInsets.all(5),
                      //membuat tampilan secara vertikal
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //ini isi tampilan vertikal tersebut
                        children: <Widget>[
                          //menampilkan variabel menggunakan widget text
                          Text(this.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(this.description),
                          Text(
                            "Harga : " + this.harga.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                          //menampilkan widget icon  dibungkus dengan row
                          Row(
                            children: <Widget>[
                              Row(
                                children: children,
                              )
                            ],
                          )
                        ],
                      )))
            ])));
  }
}
