import 'package:data_diri_flutter/second.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(), // halaman awal ketika program pertama dijalankan
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width, // lebar sesuai layar
        height: MediaQuery.of(context).size.height, // tinggi sesuai layar
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Assets/Images/backround.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Color.fromRGBO( 252, 219, 138, 1),
                child: Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                const CircleAvatar(
               radius: 100.0,
               backgroundImage: AssetImage("Assets/Images/profile.jpg"),
                ),
               const Text(
               "Rizal Mutakin",
               style: TextStyle(
               fontSize: 30.0,
               fontWeight: FontWeight.bold,
               color: Colors.black,
               ),
               ),
               const Text(
               "Smk Wikrama Bogor",
               style: TextStyle(
               fontSize: 30.0,
               fontWeight: FontWeight.bold,
               color: Colors.red,
               ),
               ),
              TextButton(
          onPressed: () {
        Navigator.push(
       context,
       MaterialPageRoute(builder: (context) => secondPage()),
      );
    },
    child: const Text("See Profile"),
              ),
              ],
                )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
