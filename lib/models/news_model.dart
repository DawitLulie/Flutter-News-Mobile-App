// This file defines what a news article looks like
// Think of it as a template for creating news items

class News {
  // Each news article will have these pieces of information
  final String id;          // A unique number to identify this news
  final String title;       // The main headline
  final String description; // A short summary
  final String imageUrl;    // The web address of the picture
  final String content;     // The full news story
  final String category;    // Which section it belongs to
  final String date;        // When it was published

  // This is like a recipe for creating a news article
  // You need to provide all these ingredients
  const News({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.content,
    required this.category,
    required this.date,
  });
}