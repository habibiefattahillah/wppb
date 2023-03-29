class Article {
  String author;
  String title;
  dynamic description;
  String url;
  dynamic urlToImage;
  DateTime publishedAt;
  dynamic content;

  Article({
    required this.author,
    required this.title,
    this.description,
    required this.url,
    this.urlToImage,
    required this.publishedAt,
    this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        author: json["author"] ?? 'No Author',
        title: json["title"] ?? 'No Title',
        description: json["description"] ?? 'No Description',
        url: json["url"] ?? 'lol',
        urlToImage: json["urlToImage"] ??
            'https://img2.reactor.cc/pics/post/CITYWILD499-Skadi-%28Arknights%29-Arknights-%D0%98%D0%B3%D1%80%D1%8B-7523261.jpeg',
        publishedAt: DateTime.parse(json["publishedAt"] ?? 'No Date'),
        content: json["content"] ?? 'No Content',
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt.toIso8601String(),
        "content": content,
      };
}
