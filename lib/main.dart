import 'package:flutter/material.dart';



double btngenislik=0;
double btnyukseklik=0;
String sonuc="12345+7896";
String deger="";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home:  Arayuz(),
    );
  }
}
class Arayuz extends StatefulWidget {
  const Arayuz({Key? key}) : super(key: key);

  @override
  State<Arayuz> createState() => _ArayuzState();
}

class _ArayuzState extends State<Arayuz> {
  @override
  Widget build(BuildContext context) {
    btngenislik=MediaQuery.of(context).size.width;
    btnyukseklik=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("Hesap Makinesi"),),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: (btngenislik/4)*3,
                    height: btnyukseklik/4,
                    child: Text(sonuc,style: TextStyle(fontSize: 30),),
                  ),
                  SizedBox(
                      width: btngenislik/4,
                      height: btnyukseklik/4,
                      child: IconButton(onPressed: (){},icon: Icon(Icons.backspace),)
                  ),
                ],
              ),

              Row(
                children: [
                  SizedBox(
                      width: btngenislik/2,
                      height: btnyukseklik/8, // <-- match-parent
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          Islem(1);
                        });
                      },child: Text("Clear"),)
                  ),
                  SizedBox(
                      width: btngenislik/4,
                      height: btnyukseklik/8, // <-- match-parent
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          deger=deger+"%";
                          sonuc=deger;
                        });
                      },child: Text("%"),)
                  ),
                  SizedBox(
                      width: btngenislik/4,
                      height: btnyukseklik/8, // <-- match-parent
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          deger=deger+"/";
                          sonuc=deger;
                        });
                      },child: Text("/"),)
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      width: btngenislik/4,
                      height: btnyukseklik/8,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          deger=deger+"7";
                          sonuc=deger;
                        });
                      },child: Text("7"),)
                  ),
                  SizedBox(
                      width: btngenislik/4,
                      height: btnyukseklik/8, // <-- match-parent
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          deger=deger+"8";
                          sonuc=deger;
                        });
                      },child: Text("8"),)
                  ),
                  SizedBox(
                      width: btngenislik/4,
                      height: btnyukseklik/8, // <-- match-parent
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          deger=deger+"9";
                          sonuc=deger;
                        });
                      },child: Text("9"),)
                  ),
                  SizedBox(
                      width: btngenislik/4,
                      height: btnyukseklik/8, // <-- match-parent
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          deger=deger+"X";
                          sonuc=deger;
                        });
                      },child: Text("X"),)
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      width: btngenislik/4,
                      height: btnyukseklik/8, // <-- match-parent
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          deger=deger+"4";
                          sonuc=deger;
                        });
                      },child: Text("4"),)
                  ),
                  SizedBox(
                      width: btngenislik/4,
                      height: btnyukseklik/8, // <-- match-parent
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          deger=deger+"5";
                          sonuc=deger;
                        });
                      },child: Text("5"),)
                  ),
                  SizedBox(
                      width: btngenislik/4,
                      height: btnyukseklik/8, // <-- match-parent
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          deger=deger+"6";
                          sonuc=deger;
                        });
                      },child: Text("6"),)
                  ),
                  SizedBox(
                      width: btngenislik/4,
                      height: btnyukseklik/8, // <-- match-parent
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          deger=deger+"-";
                          sonuc=deger;
                        });
                      },child: Text("-"),)
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      width: btngenislik/4,
                      height: btnyukseklik/8, // <-- match-parent
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          deger=deger+"1";
                          sonuc=deger;
                        });
                      },child: Text("1"),)
                  ),
                  SizedBox(
                      width: btngenislik/4,
                      height: btnyukseklik/8, // <-- match-parent
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          deger=deger+"2";
                          sonuc=deger;
                        });
                      },child: Text("2"),)
                  ),
                  SizedBox(
                      width: btngenislik/4,
                      height: btnyukseklik/8, // <-- match-parent
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          deger=deger+"3";
                          sonuc=deger;
                        });
                      },child: Text("3"),)
                  ),
                  SizedBox(
                      width: btngenislik/4,
                      height: btnyukseklik/8, // <-- match-parent
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          deger=deger+"+";
                          sonuc=deger;
                        });
                      },child: Text("+"),)
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      width: btngenislik/4,
                      height: btnyukseklik/8, // <-- match-parent
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          deger=deger+"0";
                          sonuc=deger;
                        });
                      },child: Text("0"),)
                  ),
                  SizedBox(
                      width: btngenislik/4,
                      height: btnyukseklik/8, // <-- match-parent
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          deger=deger+"00";
                          sonuc=deger;
                        });
                      },child: Text("00"),)
                  ),
                  SizedBox(
                      width: btngenislik/4,
                      height: btnyukseklik/8, // <-- match-parent
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          deger=deger+",";
                          sonuc=deger;
                        });
                      },child: Text(","),)
                  ),
                  SizedBox(
                      width: btngenislik/4,
                      height: btnyukseklik/8, // <-- match-parent
                      child: ElevatedButton(onPressed: (){},child: Text("="),)
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
void Islem(int btnTuru){
  switch(btnTuru){
    case 1:
      sonuc="";
      deger="";
      break;
  }
}