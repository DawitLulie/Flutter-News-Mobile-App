import 'package:flutter/material.dart';
import '../widgets/category_card.dart';

//  shows all the news categories

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Title at the top
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Choose Category',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  SizedBox(height: 8),
                  
                  Text(
                    'Pick what interests you',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            
            // List of all categories
            
            // Technology category
            CategoryCard(
              category: 'Technology',
              description: 'News about computers and gadgets',
              icon: Icons.computer,
              color: Colors.blue,
              onTap: () {
                // When tapped, show a message
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Showing Technology news'),
                  ),
                );
              },
            ),
            
            // Sports category
            CategoryCard(
              category: 'Sports',
              description: 'Game scores and sports news',
              icon: Icons.sports_soccer,
              color: Colors.green,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Showing Sports news'),
                  ),
                );
              },
            ),
            
            // Business category
            CategoryCard(
              category: 'Business',
              description: 'Money and company news',
              icon: Icons.business,
              color: Colors.orange,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Showing Business news'),
                  ),
                );
              },
            ),
            
            // Health category
            CategoryCard(
              category: 'Health',
              description: 'Health tips and medical news',
              icon: Icons.health_and_safety,
              color: Colors.red,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Showing Health news'),
                  ),
                );
              },
            ),
            
            // Entertainment category
            CategoryCard(
              category: 'Entertainment',
              description: 'Movies, music, and celebrities',
              icon: Icons.movie,
              color: Colors.purple,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Showing Entertainment news'),
                  ),
                );
              },
            ),
            
            // Politics category
            CategoryCard(
              category: 'Politics',
              description: 'Government and election news',
              icon: Icons.gavel,
              color: Colors.brown,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Showing Politics news'),
                  ),
                );
              },
            ),
            
            // Extra space at bottom
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
