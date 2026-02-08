import 'package:flutter/material.dart';

// This widget shows a news category in a nice box and Used in the Categories page
class CategoryCard extends StatelessWidget {
  // Data this card needs
  final String category;       // Category name
  final String description;    // What this category is about
  final IconData icon;         // Which icon to show
  final Color color;           // What color to use
  final VoidCallback onTap;    // What happens when tapped

  // Constructor
  const CategoryCard({
    super.key,
    required this.category,
    required this.description,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: InkWell(
        onTap: onTap, // When tapped, do what we were told
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              // Icon in a colored circle
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1), // Light version of our color
                  borderRadius: BorderRadius.circular(30), // Make it a circle
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 30,
                ),
              ),
              
              // Space between icon and text
              SizedBox(width: 16),
              
              // Text part
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Category name
                    Text(
                      category,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                    // Small space
                    SizedBox(height: 4),
                    
                    // Description
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              
              // Arrow on the right side
              Icon(
                Icons.chevron_right,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}