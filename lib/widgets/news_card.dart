import 'package:flutter/material.dart';
import '../models/news_model.dart';

// This widget shows one news item in a nice box
// We use it multiple times in our app

class NewsCard extends StatelessWidget {
  // We need the news data to display
  final News news;
  
  // And we need to know what happens when it's tapped
  final VoidCallback onTap;

  // Constructor - setup our card
  const NewsCard({
    super.key,
    required this.news,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // Add some space around the card
      margin: EdgeInsets.all(10),
      
      // Add a shadow under the card
      elevation: 3,
      
      // Make the card clickable
      child: InkWell(
        onTap: onTap, // When tapped, do what we were told
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              // Picture on the left side
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(news.imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              
              // Space between picture and text
              SizedBox(width: 12),
              
              // Text part on the right side
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Category and date in one line
                    Row(
                      children: [
                        // Category in a colored box
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            news.category,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        
                        // Space between category and date
                        SizedBox(width: 8),
                        
                        // Date text
                        Text(
                          news.date,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    
                    // Space under category/date
                    SizedBox(height: 8),
                    
                    // The main headline
                    Text(
                      news.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2, // Don't show more than 2 lines
                    ),
                    
                    // Space under title
                    SizedBox(height: 8),
                    
                    // The short description
                    Text(
                      news.description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700],
                      ),
                      maxLines: 2, // Don't show more than 2 lines
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}