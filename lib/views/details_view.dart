import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  static const String id = 'details_view';

  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> doctorData =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final Color cardColor = doctorData['cardColor'];
    final String doctorName = doctorData['doctorName'];
    final String specialty = doctorData['specialty'];
    final String price = doctorData['price'];
    final String imagePath = doctorData['imagePath'];
    final double rate = doctorData['rate'];

    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.share, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 120,
              backgroundColor: cardColor,
              backgroundImage: AssetImage(imagePath),
            ),
            const SizedBox(height: 16),
            Text(
              doctorName,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              specialty,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              '\$$price Per Session',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildInfoCard('12 Years', 'Experience', cardColor),
                _buildInfoCard(rate.toString(), 'Rating', cardColor),
                _buildInfoCard('2500+', 'Patients', cardColor),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    const TabBar(
                      labelColor: Colors.teal,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.teal,
                      tabs: [
                        Tab(text: 'About'),
                        Tab(text: 'Availability'),
                        Tab(text: 'Experience'),
                        Tab(text: 'Education'),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          _buildAboutTab(doctorName),
                          const Center(child: Text('Availability Details')),
                          const Center(child: Text('Experience Details')),
                          const Center(child: Text('Education Details')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildPriceCard('Per Session Fee', '\$$price'),
                _buildPriceCard('Follow-Up Fee', '\$40'),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              onPressed: () {},
              child: const Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, String subtitle, Color color) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: TextStyle(
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }

  Widget _buildAboutTab(String doctorName) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        '$doctorName is a board-certified heart expert with over 12 years of experience in the field of cardiovascular medicine...',
        style: TextStyle(fontSize: 16, color: Colors.grey[800]),
      ),
    );
  }

  Widget _buildPriceCard(String title, String price) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.grey[700]),
        ),
        const SizedBox(height: 4),
        Text(
          price,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
        ),
      ],
    );
  }
}
