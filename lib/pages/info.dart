import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: new AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.red.shade700,
                  Colors.red.shade500,
                  Colors.red.shade300,
                  Colors.red.shade200
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          title: Text('Kimler kan bağışında bunabilir?'),
        ),
        body: Card(
          margin: EdgeInsets.all(20.0),
          shadowColor: Colors.black,
          child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "💉18-65 yaş aralığında 50 kilogramın üzerindeki her sağlıklı birey kan bağışçısı adayı olabilir.\n💉İlk kez kan bağışında bulunacaklar için üst yaş sınırı: 61 yaşından gün almamış olmalı.\n💉Düzenli kan bağışçıları için üst yaş sınırı 65 yaşını doldurduktan, 70 yaşından gün alana kadar kan bağış merkezi doktorunun onayı olmak şartıyla yılda en fazla 1 kez olmak üzere kan bağışlayabilir.\n💉Bağışçının nabzı, düzenli ve dakikada 50 ile 100 arasında olmalıdır.\n💉Kan bileşeni bağışçısının vücut ağırlığı en az 50 kg en fazla 120 kg olmalıdır.\n💉Kan bileşeni bağışçısının vücut sıcaklığı 37,5 ºC’nin üstünde olmamalıdır.\n💉Kan basıncı pek çok etkene bağlı olarak değişmekle birlikte esasen sistolik basınç (büyük tansiyon) en az 90 mmHg, en çok 180 mmHg ve diastolik basınç (küçük tansiyon) en az 60 mmHg, en çok 100mmHg olmalıdır.\n💉Hemoglobin değerleri kadınlarda en az 12,5 g/dL, en çok 16,5 g/dL, erkeklerde en az 13,5 g/dL, en çok 18 g/dL olmalıdır. Çift eritrosit aferez işlemi için hemoglobin düzeyi en az 14 g/dL olmalıdır.",
                  style: TextStyle(fontSize: 18, height: 1.4),
                ),
              )),
        ));
  }
}
