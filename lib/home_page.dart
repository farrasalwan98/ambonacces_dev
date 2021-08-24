import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController? _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(5, 55, 70, 5),
          // ignore: deprecated_member_use
          title: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                  hintText: "Cari",
                  prefixIcon: Icon(
                    Icons.search_sharp,
                  ),
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.all(15)),
            ),
          ),
          actions: [
            Image.asset(
              "assets/logo_kota_ambon.png",
              height: 25,
              width: 25,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Icon(
              Icons.notifications_active,
              color: Colors.blueAccent,
              size: 30,
            ),
            Padding(padding: EdgeInsets.all(10)),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: Container(
              margin: EdgeInsets.all(5),
              child: Row(children: [
                Icon(
                  Icons.account_balance_wallet_sharp,
                  color: Colors.blueAccent,
                  size: 40,
                ),
                Text(
                  "Rp. 0",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 36)),
                Image.asset(
                  "assets/logo2.png",
                  height: 50,
                  width: 50,
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                Icon(
                  Icons.stars_sharp,
                  color: Colors.blueAccent,
                  size: 40,
                ),
                Text(
                  " 0 Point",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ]),
            ),
          ),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(
                    viewportFraction: 1, aspectRatio: 3 / 1, autoPlay: true),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(color: Colors.amber),
                          child: Center(
                            child: Text(
                              'Slider $i',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ));
                    },
                  );
                }).toList(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      //SliderCarousel
                      ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Pembayaran Online",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    //Pembayaran Online
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/ima_pulsa.png",
                              height: 65,
                              width: 65,
                            ),
                            Text("Pulsa Prabayar"),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/ima_paket_data.png",
                              height: 65,
                              width: 65,
                            ),
                            Text("Paket Data"),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/ima_pulsa.png",
                              height: 65,
                              width: 65,
                            ),
                            Text("Tagihan PLN"),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/ima_lainnya.png",
                              height: 65,
                              width: 65,
                            ),
                            Text("Lainnya"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.amber,
                    child: Image.asset(
                      "assets/iklan.jpg",
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: Text(
                      "Layanan Pemerintah Kota Ambon",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Container(
                      //Layanan Pemerintah Kota Ambon
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/ima_pjk.png",
                                height: 65,
                                width: 65,
                              ),
                              Text("Pajak"),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/ima_pengaduan.png",
                                height: 65,
                                width: 65,
                              ),
                              Text("Pengaduan"),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/ima_perijinan.png",
                                height: 65,
                                width: 65,
                              ),
                              Text("Perizinan"),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/ima_kependudukan.png",
                                height: 65,
                                width: 65,
                              ),
                              Text("Kependudukan"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    child: Text(
                      "Belanja Online",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Container(
                      //Belanja Online
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/ima_food.png",
                                height: 65,
                                width: 65,
                              ),
                              Container(
                                  width: 100,
                                  height: 32,
                                  //color: Colors.yellow,
                                  child: Text(
                                    "Makanan dan Minuman",
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                  )),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/ima_fashion.png",
                                height: 65,
                                width: 65,
                              ),
                              Container(
                                height: 32,
                                child: Text("Fesyen")),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/ima_home_living.png",
                                height: 65,
                                width: 65,
                              ),
                              Container(
                                height: 32,
                                child: Text("Perabotan")),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/ima_ambon_kesehatan.png",
                                height: 65,
                                width: 65,
                              ),
                              Container(
                                height: 32,
                                child: Text("Kesehatan")),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text(
                          "Produk Terbaru",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: [
                            Card(
                              elevation: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset("assets/baju.jpg"),
                                    height: 180,
                                    width: 180,
                                  ),
                                  Text(" Baju Korea"),
                                  Text(
                                    " Rp. 65.000",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Card(
                              elevation: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset("assets/baju2.jpg"),
                                    height: 180,
                                    width: 180,
                                  ),
                                  Text(" Baju Wanita"),
                                  Text(
                                    " Rp. 65.000",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: [
                            Card(
                              elevation: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset("assets/baju.jpg"),
                                    height: 180,
                                    width: 180,
                                  ),
                                  Text(" Baju Korea"),
                                  Text(
                                    " Rp. 65.000",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Card(
                              elevation: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset("assets/baju2.jpg"),
                                    height: 180,
                                    width: 180,
                                  ),
                                  Text(" Baju Wanita"),
                                  Text(
                                    " Rp. 65.000",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/iklan.jpg",
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: Text(
                      "Informasi Lokal",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Container(
                      //Pembayaran Online
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/ima_info.png",
                                height: 65,
                                width: 65,
                              ),
                              Container(
                                  width: 100,
                                  height: 32,
                                  //color: Colors.yellow,
                                  child: Text(
                                    "Informasi Kota Ambon",
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                  )),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/ima_event.png",
                                height: 65,
                                width: 65,
                              ),
                              Container(
                                height: 32,
                                child: Text("Kalender Event")),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/ima_news.png",
                                height: 65,
                                width: 65,
                              ),
                              Container(
                                height: 32,
                                child: Text("Berita")),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/ima_corona.png",
                                height: 65,
                                width: 65,
                              ),
                              Container(
                                height: 32,
                                child: Text("Pantau Corona")),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
