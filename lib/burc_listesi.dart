import 'package:flutter/material.dart';
import 'package:horoscopeapp/burc_item.dart';
import 'model/burc.dart';
import 'data/strings.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;
  BurcListesi() {
    tumBurclar = veriKaynaginiHazirla();
    // print(tumBurclar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burçlar Listesi'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, incdex) {
            return BurcItem(
              listelenenBurc: tumBurclar[incdex],
            );
          },
          itemCount: tumBurclar.length,
        ),
      ),
    );
  }
}

List<Burc> veriKaynaginiHazirla() {
  List<Burc> gecici = [];
  for (int i = 0; i < 12; i++) {
    var burcAdi = Strings.BURC_ADLARI[i];
    var burcTarih = Strings.BURC_TARIHLERI[i];
    var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
    //koc1.png değeri için        Koc--->koc--->koc1.png
    var burcKucukResim = Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
    var burcBuyukkResim =
        Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';

    Burc eklenecekBurc =
        Burc(burcAdi, burcTarih, burcDetay, burcKucukResim, burcBuyukkResim);
    gecici.add(eklenecekBurc);
  }
  return gecici;
}
