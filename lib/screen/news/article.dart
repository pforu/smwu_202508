// "articles": [
// {
// "source": {
// "id": null,
// "name": "Presse-citron"
// },
// "author": "Setra",
// "title": "Intelligence artificielle : et si l’acquisition record d’Apple était une startup française ?",
// "description": "Selon The Informations, les dirigeants d’Apple auraient discuté en interne d’un rachat de Perplexity ou de Mistral, le champion français de l’intelligence artificielle.",
// "url": "https://www.presse-citron.net/intelligence-artificielle-et-si-lacquisition-record-dapple-etait-une-startup-francaise/",
// "urlToImage": "https://www.presse-citron.net/app/uploads/2025/06/Mistral-Le-Chat-1600x900.jpg",
// "publishedAt": "2025-08-27T05:31:07Z",
// "content": "Contrairement aux autres géants de la tech, Apple nest pas très fan des grosses acquisitions. À ce jour, la plus importante acquisition de la firme de Cupertino a été celle de Beats Electronics pour … [+2703 chars]"
// },

class Article {
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Article({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      author: json['author'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      url: json['url'] ?? '',
      urlToImage: json['urlToImage'] ?? '',
      publishedAt: json['publishedAt'] ?? '',
      content: json['content'] ?? '',
    );
  }

  @override
  String toString() {
    return 'NewsModel{author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content}';
  }
}
