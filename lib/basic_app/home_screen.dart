import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String pic =
        "https://pics.filmaffinity.com/The_Garfield_Movie-575847316-large.jpg";
    String bg =
        "https://media.istockphoto.com/id/1170665840/vector/vintage-pop-art-yellow-background-banner-vector-illustration.jpg?s=612x612&w=0&k=20&c=5fagDnJTowtUToKaWuyejvoLj7ZsEdrD3vXyaUeOS34=";
    String bg2 =
        "https://i0.wp.com/www.kdanmobile.com/blog/wp-content/uploads/2023/05/4.jpg?ssl=1";
    String bg3 =
        "https://lumiere-a.akamaihd.net/v1/images/p_encanto_homeent_22359_4892ae1c.jpeg";

    return Scaffold(
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 9, 81, 133),
        child: ListView(
          children: [
            DrawerHeader(
              child: Image.network(
                  "https://www.acledasecurities.com.kh/as/assets/layout/logo1.png"),
            ),
            const ListTile(
              // IconButton(onPressed: () {}, icon: const Icon(Icons.home)),

              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.navigate_next),
            ),
            const ListTile(
              leading: Icon(Icons.call),
              title: Text("Contact"),
              trailing: Icon(Icons.navigate_next),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              trailing: Icon(Icons.navigate_next),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        // leading: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: CircleAvatar(
        //     radius: 100,
        //     backgroundImage: NetworkImage(pic),
        //   ),
        // ),
        title: Text("HomeScreen"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.yellow, Color.fromARGB(255, 3, 100, 180)],
            ),
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.red.shade500,
              BlendMode.colorBurn,
            ),
            image: NetworkImage(bg2),
            fit: BoxFit.cover,
          ),
        ),
        // color: Colors.yellow[50],
        child: Container(
          width: 250,
          height: 250,
          transformAlignment: Alignment.center,
          transform: Matrix4.rotationZ(0.9),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(pic),
              fit: BoxFit.cover,
            ),
            // border: Border.all(width: 20, color: Colors.purple),
            boxShadow: [
              BoxShadow(
                spreadRadius: 30,
                blurRadius: 0,
                color: Colors.deepOrangeAccent,
                offset: Offset(0, 0),
              ),
              BoxShadow(
                spreadRadius: 15,
                blurRadius: 0,
                color: Colors.white,
                offset: Offset(0, 0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
