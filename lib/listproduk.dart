import  'package:flutter/material.dart';
//import  terlebih  dahulu  halaman  yang  diperlukan 
import  './detail_produk.dart';
//Top  Level/Root
void  main()  =>  runApp(MyApp());


class  MyApp  extends  StatelessWidget  {
@override

Widget  build(BuildContext  context)  {

return  MaterialApp(
title:  'First  App',

home:  MyHomePage(),
);
}
}

class  MyHomePage  extends  StatelessWidget  { @override
Widget  build(BuildContext  context)  {
return  Scaffold(

appBar:  AppBar(title:  Text("DAFTAR HOTEL")),

body:  ListView(
shrinkWrap:  true,

padding:  const  EdgeInsets.fromLTRB(2.0,  10.0,  2.0,  10.0),

children:  <Widget>[

new  GestureDetector(

onTap:  ()  {

Navigator.of(context).push(new  MaterialPageRoute(

builder:  (BuildContext  context)  =>  DetailProduk(
name:  "Matahari Resort and SPA",
description:  "Satu satunya hotel berbintang 5 yang berada dikawasan pemuteran. matahari hotel memiliki fasilitas terbilang sangat lengkap mulai dari spa,restoran hingga taman golf",
price:  1000,
image:  "mata.jpg", star:  5,
),
));
},

child:  ProductBox(

name:  "Matahari Hotel",
description:  "Satu satunya hotel berbintang 5....", 
price:  1000,
image:  "mata.jpg",),
),


new  GestureDetector( 
  onTap:  ()  {
Navigator.of(context).push(new  MaterialPageRoute( 
  builder:  (BuildContext  context)  =>  DetailProduk(
name:  "Adi Asri",
description:  "Adi Asri merupakan hotel dengan kamar terbanyak didaerah pemuteran sehingga cocok digunakan untuk liburan dengan rombangan besar serta memiliki fasilitas yang lengkap",

price:  200,
image:  "Adi.jpeg", star:  3,
),
));
},
child:  ProductBox( 
name:  "Adi Asri",
description:  "di Asri merupakan hotel dengan kamar...",  
price:  200,
image:  "Adi.jpeg",)),

new  GestureDetector( onTap:  ()  {
Navigator.of(context).push(new  MaterialPageRoute( builder:  (BuildContext  context)  =>  DetailProduk(
name:  "Amertha Hotel",
description:  "Amertha menyuguhkan susana yang nyama dan tenang dengan banyak tanaman yang menghiasin area hotel membuat asri dan udara segar",

price:  500,
image:  "amer.jpg", star:  3,
),
));
},
child:  ProductBox( 
name:  "Amertha",
description:"Amertha menyuguhkan susana yang...", 
price:  500,
image:  "amer.jpg",),
),


new  GestureDetector( onTap:  ()  {
Navigator.of(context).push(new  MaterialPageRoute( builder:  (BuildContext  context)  =>  DetailProduk(
name:  "Pondok Sari",
description:  "Pondok Sari merupakan hotel tertua yang ada dikawasan pemuteran",
price:  300,
image:  "pondok.jpg", star:  4,
),
));
},

child:  ProductBox( name:  "Pondok Sari",
description:  "ondok Sari merupakan hotel...", 
price:  300,
image:  "pondok.jpg",
),	),
],
));
}}

//menggunakan  widget  StatelessWidget
class  ProductBox  extends  StatelessWidget  {
//deklarasi  variabel  yang  diterima  dari  MyHomePage
ProductBox({Key  key,  this.name,  this.description,  this.price,  this.image})
:  super(key:  key);
//menampung  variabel  yang  diterima  untuk  dapat  digunakan  pada  class  ini
final  String  name;
final  String  description; 
final  int  price;
final  String  image;

Widget  build(BuildContext  context)  {
//menggunakan  widget  container 
return  Container(
//padding
      padding:  EdgeInsets.all(2),
      //  height:  120,
      //menggunakan  widget  card 
      child:  Card(
      //membuat  tampilan  secara  horisontal  antar  image  dan  deskripsi 
      child:  Row(mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
      //children  digunakan  untuk  menampung  banyak  widget 
      children:  <Widget>[
      Image.asset( "assets/appimages/"  +  image, width:  150,
      ),
      Expanded(
      //child  digunakan  untuk  menampung  satu  widget 
      child:  Container(
      padding:  EdgeInsets.all(5),
      //membuat  tampilan  secara  vertikal 
      child:  Column(
      mainAxisAlignment:  MainAxisAlignment.start,
      //ini  isi  tampilan  vertikal  tersebut 
      children:  <Widget>[
      //menampilkan  variabel  menggunakan  widget  text 
      Text(this.name,
      style:  TextStyle(fontWeight:  FontWeight.bold,)), Text(this.description),
      Text(
      "Price:  "  +  this.price.toString(), style:  TextStyle(color:  Colors.red),
      ),
      //menampilkan  widget  icon    dibungkus  dengan  row 
      Row(
      children:  <Widget>[ Row(
      children:  <Widget>[
      Icon(Icons.star,  size:  10,  color:  Colors.deepOrange,),
      Icon(Icons.star,  size:  10,  color:  Colors.deepOrange,), 
      Icon(Icons.star,  size:  10,  color:  Colors.deepOrange,), 
      Icon(Icons.star,  size:  10,  color:  Colors.orange),
      ],
      )

      ],
      )
      ],
      )))
      ])));
      }
      }
