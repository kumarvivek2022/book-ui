import 'package:flutter/material.dart';
import 'package:reading_book/screenfirst.dart';
class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.black,),
                onPressed: () { Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const FirstScreen(),
                ));
                    },
              );
            },
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark,
                  color: Colors.black,
                )),
          ],
        ),
        body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          galaxy(),
          introduction(),
        ],

        ),
        ),
    );
  }
  Widget galaxy() {
    return Container(
      height: 480,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkIkbYHXZ9WuyM4VZuZVi11BLO6ivVMP_iVQ&usqp=CAU"),
            height: 280, width: 250,  fit: BoxFit.cover),
          ),
        const SizedBox(height: 20,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: () {},
                child: const Text("Science"),
              style: ElevatedButton.styleFrom(
                primary: Colors.pinkAccent.shade100,
                fixedSize: const Size(90, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            ElevatedButton(onPressed: () {},
              child: const Text("History"),
              style: ElevatedButton.styleFrom(
                primary: Colors.pinkAccent.shade100,
                fixedSize: const Size(90, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
          const SizedBox(height: 10,),
          const Text("Galaxy 101",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
          const Text("by Anna", style: TextStyle(color: Colors.grey),),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star_half_sharp, color: Colors.yellow,),
              Text("4.5 / 48 review"),

            ],
          ),
        ],
      ),
    );

  }
  Widget introduction() {
    return Container(
   
    height: 480,
    width: double.infinity,
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Introduction', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        const SizedBox(height: 10,),
        const Text('A preface discusses how the book came about, the scope of the book, why the book was written, its limitations, and any acknowledgments the author or editor has.'),
         const SizedBox(height: 30,),
        Center(
          child: ElevatedButton(onPressed: () {},

              child: Row(
                children: const [
                  Icon(Icons.play_circle_fill_rounded),
                  SizedBox(width: 10,),
                  Text('Read Now',style: TextStyle(fontSize: 20),),


                ],


              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple,
                  fixedSize: const Size(200, 70),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  padding: const EdgeInsets.all(20),
              )
          ),
        ),
    ],
        ),


        ),
    );

    
  }
}
