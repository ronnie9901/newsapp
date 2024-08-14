class NewsModal {
  late String status;
  late int totalResults;
  List<Articles> articles = [];

  NewsModal(
      { required this.status,
        required this.totalResults,
        required this.articles});

  factory NewsModal.fromJson(Map m1) {
    return NewsModal(
        status: m1['status'],
        totalResults: m1['totalResults'],
        articles: (m1['articles'] as List).map((e) => Articles.fromJson(e)).toList());
  }
}

class Articles {
  late String author, title, description, urlToImage,publishedAt,content;
  late Source source;

  Articles(
      {required this.author,
        required this.title,
        required this.description,
        required this.urlToImage,
        required this.publishedAt,
        required this.content,
        required this.source,

      });

  factory Articles.fromJson(Map m1) {
    return Articles(
        author: m1['author'] ?? 'hello',
        title: m1['title'] ?? 'hello',
        description: m1['description'] ??  '',
        urlToImage: m1['urlToImage'] ??'https://media.istockphoto.com/id/613550954/vector/breaking-news-headline-newspaper-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=ZLyQEdx1Ynh1WRsr9Nx2ZIo_NC7TCIUS_yQ3_FwL3tE=',
        publishedAt: m1['publishedAt'] ?? '',
        content: m1['content'] ?? '',
        source: Source.fromJson(m1['source']), );
  }
}

class Source{
  late String id,name;

  Source({required this.id,required this.name});

  factory Source.fromJson(Map m1){
    return Source(id: m1['id'] ?? '', name: m1['name'] ?? '');
  }
}