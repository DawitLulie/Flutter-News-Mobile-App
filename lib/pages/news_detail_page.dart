import 'package:flutter/material.dart';
import '../models/news_model.dart';

// This page shows the full news story
// It opens when you tap a news card

class NewsDetailPage extends StatelessWidget {
  // We need to know which news to show
  final News news;

  const NewsDetailPage({
    super.key,
    required this.news,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Details'),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Big picture at the top
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(news.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            // The rest of the content
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Show category and date
                  Row(
                    children: [
                      // Category in a blue box
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          news.category,
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      
                      // Space between category and date
                      SizedBox(width: 12),
                      
                      // Date with calendar icon
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            size: 16,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 4),
                          Text(
                            news.date,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  
                  // Space before title
                  SizedBox(height: 20),
                  
                  // The main headline
                  Text(
                    news.title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  // Space after title
                  SizedBox(height: 20),
                  
                  // A line to separate
                  Divider(
                    color: Colors.grey[300],
                  ),
                  
                  // Space after line
                  SizedBox(height: 20),
                  
                  // The full story
                  Text(
                    news.content,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.6, // Space between lines
                    ),
                  ),
                  
                  // Space at the bottom
                  SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}