import 'package:flutter/material.dart';
import 'package:reading_book/secondscreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://png.pngtree.com/png-clipart/20200224/original/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_5247852.jpg"),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            bookList(),
            continueReading(),
            //startup(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.pink,),
          label: 'Home',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat, color: Colors.pink,),
          label: 'Home',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart, color: Colors.pink,),
          label: 'Home',
          backgroundColor: Colors.pink,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notification_add, color: Colors.pink,),
          label: 'Home',
          backgroundColor: Colors.pink,
        ),
      ],
      ),
    );
  }

  Widget bookList()  {
    return Container(
      height: 370,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Books For You", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                Text("See all", style: TextStyle(fontSize: 15, color: Colors.pinkAccent),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              color: Colors.white,
              height: 300,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) {
                    return Container(
                      height: 250,
                      width: 200,
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => const SecondScreen(),
                                  ));
                                },
                                child: const Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkIkbYHXZ9WuyM4VZuZVi11BLO6ivVMP_iVQ&usqp=CAU",))),
                            const SizedBox(height: 10,),
                            const Text("Galaxy 101",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                            const Text("by Anna", style: TextStyle(color: Colors.grey),),
                            Row(
                              children: const [
                                Text("4.5"),
                                Icon(Icons.star),
                              ],
                            ),
                          ],

                        ),

                      ),
                    );
                  } ),
            ),
          )
        ],
      ),
    );
  }

  Widget continueReading() {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
          children: [
      Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text("Continue reading", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          Text("See all", style: TextStyle(fontSize: 15, color: Colors.pinkAccent),),
        ],
      ),
    ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image(image: NetworkImage("https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80"),
                  height: 150, width: 150,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Startup 101",style: TextStyle(fontWeight: FontWeight.bold),),
                      const Text("by Jasmine",style: TextStyle(fontWeight: FontWeight.w300),),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 30,
                              width: 130,
                              alignment: Alignment.topLeft,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: LinearProgressIndicator(
                                  value: 0.7,
                                  minHeight: 7,
                                ),
                              ),

                            ),
                            const SizedBox(width: 10,),
                            const Text('75%'),

                          ],

                        ),

                      ),
                     // const Text('70%'),

                    ],
                  ),
                ),
              ],

            )

      ],),
    );
  }

}