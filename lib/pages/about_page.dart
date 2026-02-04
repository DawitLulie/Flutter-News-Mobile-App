import 'package:flutter/material.dart';

// This page tells users about our app
// Like an "About Us" page

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Our App'),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Blue header at the top
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // App logo (a newspaper icon)
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.newspaper,
                      color: Colors.blue,
                      size: 60,
                    ),
                  ),
                  
                  // Space under logo
                  SizedBox(height: 16),
                  
                  // App name
                  Text(
                    'News App',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  // App version
                  Text(
                    'Version 1.0.0',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
            
            // The rest of the content
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // About section title
                  Text(
                    'About This App',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  // Space after title
                  SizedBox(height: 12),
                  
                  // Description of the app
                  Text(
                    'This app helps you stay updated with news from around the world. '
                    'We show news in different categories so you can read what interests you.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  
                  // Big space before next section
                  SizedBox(height: 30),
                  
                  // Features title
                  Text(
                    'What This App Does',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  // Space after title
                  SizedBox(height: 12),
                  
                  // List of features
                  _buildFeature(
                    icon: Icons.update,
                    title: 'Latest News',
                    description: 'Get new stories every day',
                  ),
                  
                  _buildFeature(
                    icon: Icons.category,
                    title: 'Categories',
                    description: 'Pick what you want to read',
                  ),
                  
                  _buildFeature(
                    icon: Icons.description,
                    title: 'Full Stories',
                    description: 'Read complete articles',
                  ),
                  
                  _buildFeature(
                    icon: Icons.phone_android,
                    title: 'Easy to Use',
                    description: 'Simple and clear design',
                  ),
                  
                  // Big space before contact info
                  SizedBox(height: 30),
                  
                  // Contact info in a box
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Contact title
                          Text(
                            'Contact Us',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          
                          // Space after title
                          SizedBox(height: 12),
                          
                          // Email contact
                          _buildContact(
                            icon: Icons.email,
                            text: 'dawitlulie2@gmail.com',
                          ),
                          
                          // Phone contact
                          _buildContact(
                            icon: Icons.phone,
                            text: '+251 965 849 518',
                          ),
                          
                          // Address
                          _buildContact(
                            icon: Icons.location_on,
                            text: 'Addis Ababa',
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  // Space at the bottom
                  SizedBox(height: 30),
                  
                  // Made with love text
                  Center(
                    child: Text(
                      'Made with Flutter ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  
                  // Final space
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build a feature item
  Widget _buildFeature({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          // Icon on the left
          Icon(
            icon,
            color: Colors.blue,
            size: 24,
          ),
          
          // Space after icon
          SizedBox(width: 12),
          
          // Text part
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Feature title
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                
                // Small space
                SizedBox(height: 4),
                
                // Feature description
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
        ],
      ),
    );
  }

  // Helper function to build a contact item
  Widget _buildContact({
    required IconData icon,
    required String text,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          // Icon
          Icon(
            icon,
            color: Colors.blue,
            size: 20,
          ),
          
          // Space after icon
          SizedBox(width: 12),
          
          // Contact text
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}