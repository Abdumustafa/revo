import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            height: 280,
            width: double.infinity,
            child: Image.asset(
              "assets/image/city.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 330,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color.fromARGB(255, 95, 150, 170).withOpacity(0.7),
                  const Color(0xff036268).withOpacity(0.9),
                ],
              ),
            ),
          ),
          Container(
            height: 650,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.1),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Positioned.fill(
            top: 180,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 60),
                        Text(
                          "عبدالرحمن محمد",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Cairo",
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "القاهره-مصر",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.blueGrey,
                            fontFamily: "Cairo",
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildStatItem("32", "Properties Sold"),
                              _buildStatItem("14", "Listings"),
                              _buildStatItem("8", "Active Clients"),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  const SizedBox(height: 35),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Collections",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildCollectionCard(
                          title: "Apartments",
                          subtitle: "24 Listings",
                          image: "assets/image/home1.webp",
                        ),
                        SizedBox(width: 12),
                        _buildCollectionCard(
                          title: "Compounds",
                          subtitle: "12 Units",
                          image: "assets/image/home1.webp",
                        ),
                        SizedBox(width: 12),
                        _buildCollectionCard(
                          title: "Furnished",
                          subtitle: "8 Offers",
                          image: "assets/image/home1.webp",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 130,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 4),
                  image: DecorationImage(
                    image: AssetImage("assets/image/profile.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: "Cairo",
          ),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.blueGrey,
            fontFamily: "Cairo",
          ),
        ),
      ],
    );
  }

  Widget _buildCollectionCard(
      {required String title,
      required String subtitle,
      required String image}) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: "Cairo",
              ),
            ),
            SizedBox(height: 4),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 12,
                fontFamily: "Cairo",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
