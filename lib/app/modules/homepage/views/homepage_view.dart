import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepageview(),
    );
  }
}

class homepageview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8EDEB), // Background color as per the image
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor:
                      Colors.transparent, // Set background color to transparent
                  radius: 30, // Radius untuk menentukan ukuran lingkaran
                  child: ClipOval(
                    child: Image.asset(
                      '../../../../../assets/profil.png', // Ganti dengan path gambar lokal
                      width: 70, // Lebar gambar yang diinginkan
                      height: 70, // Tinggi gambar yang diinginkan
                      fit: BoxFit
                          .cover, // Menentukan bagaimana gambar akan di-fit dalam lingkaran
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "wulan",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.notifications_outlined, color: Colors.black87),
              onPressed: () {
                // Notification action
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),

            // Search bar
            TextField(
              decoration: InputDecoration(
                hintText: "Need a food for your cat?",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            SizedBox(height: 20),

            // Welcome banner
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Membuat jarak antara teks dan gambar
                crossAxisAlignment: CrossAxisAlignment
                    .center, // Menyelaraskan item secara vertikal
                children: [
                  // Bagian kiri berisi teks
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Menyelaraskan teks ke kiri
                    children: [
                      Text(
                        "Welcome in CatCare!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Healthy and Happy Life for Your Loved Cat!",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ],
                  ),

                  // Bagian kanan berisi gambar
                  Image.asset(
                    '../../../../../assets/caat2.png', // Ganti dengan path gambar Anda
                    width: 150,
                    height: 150,
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Category section
            Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCategoryItem(
                      "Kitten", "../../../../../assets/kitten.jpeg"),
                  _buildCategoryItem(
                      "Angora", "../../../../../assets/anggora.jpeg"),
                  _buildCategoryItem(
                      "Persian", "../../../../../assets/persia.jpeg"),
                  _buildCategoryItem(
                      "Srossbreed", "../../../../../assets/blesteran.jpeg"),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Recommended section
            Text(
              "Recommended",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),

            // Build Grid of Recommended Items
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.7,
              ),
              itemCount:
                  recommendedItems.length, // Adjust item count dynamically
              itemBuilder: (context, index) {
                final item = recommendedItems[index] as Map<String,
                    String>; // Casting item to Map<String, String>
                return _buildRecommendedItem(
                    item['image']!, item['title']!, item['price']!);
              },
            ),
          ],
        ),
      ),

      // Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.article), label: 'Article'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Shopping'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String title, String imageUrl) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imageUrl,
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  // Fungsi untuk membuat item rekomendasi dengan parameter dinamis
  Widget _buildRecommendedItem(String imagePath, String title, String price) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath, // Gambar dinamis
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Text(
            title, // Judul dinamis
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(price, style: TextStyle(color: Colors.black54)), // Harga dinamis
        ],
      ),
    );
  }
}

// Daftar produk rekomendasi dengan gambar, judul, dan harga yang berbeda
List<Map<String, String>> recommendedItems = [
  {
    'image': '../../../../../assets/whiskas.jpeg',
    'title': 'Whiskas Junior',
    'price': '\$25 / kg'
  },
  {
    'image': '../../../../../assets/catstick.jpeg',
    'title': 'Catstick',
    'price': '\$30 / kg'
  },
  {
    'image': '../../../../../assets/felix.jpeg',
    'title': 'Purina Felix',
    'price': '\$45 / kg'
  },
  {
    'image': '../../../../../assets/vitamin.jpeg',
    'title': 'Vitamin Cat',
    'price': '\$20 / kg'
  },
  {
    'image': '../../../../../assets/cemilan.webp',
    'title': 'Vitamin Cat',
    'price': '\$20 / kg'
  },
];
