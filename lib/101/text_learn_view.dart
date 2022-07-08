import 'package:flutter/material.dart';

import 'modals/project_styles.dart';

class FirstView extends StatelessWidget {
  FirstView({Key? key}) : super(key: key);

  String isim = "Tunç \nKankılıç";

  @override
  Widget build(BuildContext context) {
    //Flutter arayüzünde eklemelerin yapıldığı beyaz bir tuval
    //Özelleştirilebilir bir çok parametresi vardır
    //Çok işlevli çalışır
    return Scaffold(
      //Uygulama sayfasının üst kısmında bulunan çok işlevli uygulama çubuğu
      appBar: AppBar(
        backgroundColor: ProjectColors.red800,
        title: Text(
          isim,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.white),
        ),
      ),
      //Flutter arayüzünde kapsayanı olan widgetın merkezine kapsadığı widgetı yerleştirir
      //Merkezi yerleşim için kullanılan bir widget
      body: Center(
        //Dikey sütun yerleşimi için kullanılan widget
        //Yerleşim ayarlaması için detaylı parametreleri vardır
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Flutter arayüzünde benim gözümde en temel maddedir
            //Özelleştirilebilir her yönden işlenebilir kapsayıcıdır
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: ProjectColors.red800,
                borderRadius: BorderRadius.circular(20),
              ),
              //Flutter arayüzünde String ifadelerin gösterimini sağlayan widget
              //Özelleştirilebilir bir yapıya sahiptir
              //Yerleşim, Stil vb.
              child: Text(
                isim,
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
                maxLines: 2,
                //Stil için alternatif kullanım olarak
                //Özelleştirilebilir tema içinde bulunan değişkenlerden
                //Ayarlamalar yapılabilir
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: Colors.white,fontWeight: FontWeight.bold),
              ),
            ),
            // Container'ın sadece boyut verilebilen versiyonudur
            //.shrink ve .square formatları da vardır
            //square olunca sadece kullanılması gereken mesafe verilir dimension parametresinde
            //Shrink ise olabilecek en küçük nokta oluşturmayı sağlar
           const SizedBox(
            width: 300,
            height: 300,
           ),
          ],
        ),
      ),
    );
  }
}
