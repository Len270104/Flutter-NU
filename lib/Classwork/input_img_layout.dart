import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_app/basic_app/login_screen.dart';
// import 'package:my_app/basic_app/simple_state.dart';

class input_img_layout extends StatelessWidget {
  final List<String> imageUrls = [
    'https://m.media-amazon.com/images/M/MV5BNjQwZDIyNjAtZGQxMC00OTUwLWFiOWYtNzg2NDc5Mjc1MDQ5XkEyXkFqcGdeQXVyMTAxNzQ1NzI@._V1_.jpg',
    'https://static.toiimg.com/photo/90355881.cms',
    'https://lumiere-a.akamaihd.net/v1/images/p_encanto_homeent_22359_4892ae1c.jpeg?region=0%2C0%2C540%2C810',
    'https://amc-theatres-res.cloudinary.com/image/upload/f_auto,fl_lossy,h_465,q_auto,w_310/v1709921464/amc-cdn/production/2/movies/70800/70790/PosterDynamic/163689.jpg',
    'https://upload.wikimedia.org/wikipedia/en/d/de/WishMoviePoster.jpg',
    'https://wwwimage-us.pplusstatic.com/thumbnails/photos/w370-q80/movie_asset/14/96/41/gdbr2_us_2023_sa_poster_1400x2100.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // shadowColor: const Color.fromARGB(232, 0, 0, 0),
        title: const Text(
          "Layout",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const (),
              //   ),
              // );
            },
            icon: const Icon(Icons.logout_outlined),
            color: Colors.white,
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 234, 0, 0),
                Colors.indigo,
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            children: [
              //=======Row=======//
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                  print("Container pressed!");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildImage(imageUrls[0], 200),
                    _buildImage(imageUrls[1], 200),
                  ],
                ),
              ),

              SizedBox(height: 20),
              //=======Stack=======//
              Stack(
                children: [
                  _buildImage(imageUrls[2], double.infinity),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //=======GridView=======//
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                childAspectRatio: 3 / 4,
                physics: BouncingScrollPhysics(),
                children: imageUrls
                    .map((imageUrl) => _buildImage(imageUrl, 150))
                    .toList(),
              ),
              SizedBox(height: 20),
              //=======GridView=======//
              GridView.extent(
                shrinkWrap: true,
                maxCrossAxisExtent: 100,
                childAspectRatio: 3 / 4,
                physics: BouncingScrollPhysics(),
                children: imageUrls
                    .map((imageUrl) => _buildImage(imageUrl, 150))
                    .toList(),
              ),
              SizedBox(
                height: 20,
              ),
              //=======ListView=======//
              ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: imageUrls
                    .map((imageUrl) => _buildImage(imageUrl, 150))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage(String imageUrl, double imageWidth) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.network(
        imageUrl,
        width: imageWidth,
        fit: BoxFit.cover,
      ),
    );
  }
}
