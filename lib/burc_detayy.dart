import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'data/strings.dart';

class Burcdetaylari extends StatefulWidget {

  @override
  State<Burcdetaylari> createState() => _BurcdetaylariState();
}

class _BurcdetaylariState extends State<Burcdetaylari> {
    var appbarrengi = Colors.pink;
    late PaletteGenerator gen;
    @override
  void initState() {
    super.initState();

    //gen = PaletteGenerator.fromImage(Image.asset(burcit));
  }

  @override
  Widget build(BuildContext context) {
    List burcitemlist = ModalRoute.of(context)!.settings.arguments as List<dynamic>;
    //print(burcitemlist[2]);

    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: Padding(
                padding: EdgeInsets.only(left: 10),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios)),
              ),
              backgroundColor: appbarrengi,
              pinned: true,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                  title:Text("${burcitemlist[0]} Burcu ve Özellikleri"),
                  background: burcitemlist[1],                   
                ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(25),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return
                      Text(burcitemlist[2],style: TextStyle(fontSize: 20),);
            
                },
                childCount: 1)),
            ),
          ],
        ),
      ),
    );

}
}