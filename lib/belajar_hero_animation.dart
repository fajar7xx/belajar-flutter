import 'package:flutter/material.dart';

void main() => runApp(BelajarHeroAnimation());

class BelajarHeroAnimation extends StatelessWidget {
  // const BelajarHeroAnimation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  // const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue[50],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Latihan Hero Animation",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: GestureDetector(
          onTap: () {
            // panggil second page
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
          },
          child: Hero(
            tag: 'profilePicture',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: 100,
                height: 100,
                child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://inikpop.com/wp-content/uploads/2018/12/jennie.jpg")),
              ),
            ),
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  // const SecondPage({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Latihan Hero Animation",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Hero(
          tag: 'profilePicture',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 200,
              height: 200,
              child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://inikpop.com/wp-content/uploads/2018/12/jennie.jpg")),
            ),
          ),
        ),
      ),
    );
  }
}
