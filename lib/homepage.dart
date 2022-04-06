import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:reading_book/screenfirst.dart';

//Color color = Colors.blueAccent;
class HomePage extends StatefulWidget {
  const HomePage ({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink.shade300,
        child: const Icon(Icons.play_circle_fill_rounded),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen(),
          ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        decoration: const BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
    ),),
          height: MediaQuery.of(context).size.height*0.90,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Image.network("https://png.pngtree.com/png-clipart/20190516/original/pngtree-cartoon-open-book-icon-reading-flipping-through-the-dictionary-open-book-png-image_3802235.jpg",
                                ),
              ),
              const Center(
                child: Text('    Read your\nfavourite books',
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),

              ),
              const SizedBox(
                height: 20,
              ),
              const Text('All of your favourite books are\n       already here',
              style: TextStyle(fontWeight: FontWeight.w200),),

            ],
          ),
       ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.deepPurple,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextButton(
              onPressed: () {},
              child: const Text("Back",style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
      );



  }
}
