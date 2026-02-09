import 'package:flutter/material.dart';
import 'news_detail_page.dart';
import 'categories_page.dart';
import 'about_page.dart';
import '../models/news_model.dart';
import '../widgets/news_card.dart';

// This is the main screen of the app and it show a list of news articles

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  static const List<News> newsList = [
    News(
      id: '1',
      title: 'Flutter Gets Big Update',
      description: 'Google releases new version with cool features for developers',
      imageUrl: 'https://picsum.photos/200/300?random=1',
      content: 'Flutter 3.0 has many new things... ',
      category: 'Technology',
      date: 'Today',
    ),
    News(
      id: '2',
      title: 'Local Sports Team Wins',
      description: 'Big celebration in the city after championship win',
      imageUrl: 'https://picsum.photos/200/300?random=2',
      content: 'The team played really well... ',
      category: 'Sports',
      date: 'Yesterday',
    ),
    News(
      id: '3',
      title: 'Business News Today',
      description: 'Stock market doing well this week',
      imageUrl: 'https://picsum.photos/200/300?random=3',
      content: 'Many companies are growing... ',
      category: 'Business',
      date: '2 days ago',
    ),
    News(
      id: '4',
      title: 'New Phone Released',
      description: 'Tech company shows their latest smartphone',
      imageUrl: 'https://picsum.photos/200/300?random=4',
      content: 'The phone has a great camera... ',
      category: 'Technology',
      date: '3 days ago',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top bar with app name
      appBar: AppBar(
        title: Text('News App'),
        backgroundColor: Colors.blue,
      ),
      
      // The main content area
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Welcome text at the top
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Big welcome text
                  Text(
                    'Latest News',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  // Small space
                  SizedBox(height: 8),
                  
                  // Description text
                  Text(
                    'Read the newest stories from around the world',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            
            // Show all our news cards
            for (var news in newsList)
              NewsCard(
                news: news,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewsDetailPage(news: news),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
      
      // Simple bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        items: [
          // Home button
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          // Categories button
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          // About button
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
        ],
        currentIndex: 0, // Home is selected
        onTap: (index) {
          // Handle button taps
          if (index == 1) {
            // Go to categories page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CategoriesPage(),
              ),
            );
          } else if (index == 2) {
            // Go to about page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutPage(),
              ),
            );
          }
        },
      ),
    );
  }
}