// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:urunler_app/data/entity/renkler.dart';
import 'package:urunler_app/data/entity/urunler.dart';

class DetaySayfa extends StatefulWidget {
  Urunler urun;
  DetaySayfa({required this.urun,}) ;
  

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.urun.ad, style: TextStyle(color: yaziRenk),),
      backgroundColor: anaRenk,),
      body: Center(
        child: 
        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${widget.urun.resim}"),
            Text("${widget.urun.fiyat}₺", style:  TextStyle(fontSize: 50, color: yaziRenk),),
          ],
        ),
      ),
    );
  }
}