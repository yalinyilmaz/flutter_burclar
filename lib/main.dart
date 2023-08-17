import 'package:flutter/material.dart';
import 'data/strings.dart';
import 'burc_detayy.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      title:"Burç Listesi",
      home: BurcListesi(),
      routes: {
        //"/" :(context) => BurcListesi(),
        "/burcdetay":(context) => Burcdetaylari(),
      },
    );
  }
}

  Widget im1 = Image.asset("images/koc1.png",fit: BoxFit.cover,);
  Widget im2 = Image.asset("images/boga2.png",fit: BoxFit.cover,);
  Widget im3 = Image.asset("images/ikizler3.png",fit: BoxFit.cover,);
  Widget im4 = Image.asset("images/yengec4.png",fit: BoxFit.cover,);
  Widget im5 = Image.asset("images/aslan5.png",fit: BoxFit.cover,);
  Widget im6 = Image.asset("images/basak6.png",fit: BoxFit.cover,);
  Widget im7 = Image.asset("images/terazi7.png",fit: BoxFit.cover,);
  Widget im8 = Image.asset("images/akrep8.png",fit: BoxFit.cover,);
  Widget im9 = Image.asset("images/yay9.png",fit: BoxFit.cover,);
  Widget im10 = Image.asset("images/oglak10.png",fit: BoxFit.cover,);
  Widget im11 = Image.asset("images/kova11.png",fit: BoxFit.cover,);
  Widget im12 = Image.asset("images/balik12.png",fit: BoxFit.cover,);
  
  Widget imgyrt(String imgname){

    return Image.asset(imgname,fit: BoxFit.cover,);
  }
  

class BurcListesi extends StatelessWidget {

List<Widget> Imageskucuk =[im1,im2,im3,im4,im5,im6,im7,im8,im9,im10,im11,im11,im12];
List<Widget> Imagesbuyuk =[imgyrt("images/koc_buyuk1.png"),imgyrt("images/boga_buyuk2.png"),imgyrt("images/ikizler_buyuk3.png"),imgyrt("images/yengec_buyuk4.png"),imgyrt("images/aslan_buyuk5.png"),imgyrt("images/basak_buyuk6.png"),imgyrt("images/terazi_buyuk7.png"),imgyrt("images/akrep_buyuk8.png"),imgyrt("images/yay_buyuk9.png"),imgyrt("images/oglak_buyuk10.png"),imgyrt("images/kova_buyuk11.png"),imgyrt("images/balik_buyuk12.png")];

  @override
  Widget build(BuildContext context) {
    var mytextsyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight:45,
        elevation:12,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Burçlar Listesi",
            style: TextStyle(color: Colors.white,fontSize: 20,)          
            ),
          ],
        ),
      ),
      body:ListView.builder(
        padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
        itemBuilder: (context,index){
          String oanki_burc_adi = Strings.BURC_ADLARI[index];
          String oanki_burc_tarihi = Strings.BURC_TARIHLERI[index];
          Widget oanki_burc_kucukresmi = Imageskucuk[index];
          Widget oanki_burc_buyukresmi = Imagesbuyuk[index];
          String oanki_burc_ozellikleri = Strings.BURC_GENEL_OZELLIKLERI[index];
          return Column(
            children: [
              Card(            
                child:ListTile(
                      contentPadding: EdgeInsets.only(left:20,bottom: 10,right: 15),                        
                      leading: oanki_burc_kucukresmi,
                      title:Text(oanki_burc_adi,style:mytextsyle.headlineSmall,),
                      subtitle:Text(oanki_burc_tarihi,style: mytextsyle.subtitle1,),
                      trailing: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context,"/burcdetay",arguments: [oanki_burc_adi,oanki_burc_buyukresmi,oanki_burc_ozellikleri], );
                        },
                        child: Icon(Icons.arrow_forward_ios,color: Colors.redAccent)),
                        ),
              ),
              Divider(
                color: Colors.white,
                height: 7,
              ),
            ],
          );},
        itemCount: Strings.BURC_ADLARI.length,
        ),

    );
  }
}

