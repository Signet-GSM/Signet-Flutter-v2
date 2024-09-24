class BoardModels {
  final int id;
  final int gallery;
  final bool isAdmin;
  final String title;
  final String content;
  final String name;
  final int like;
  final int dislike;
  final String createdAt;
  late final String? password;

  BoardModels({
    required this.id,
    required this.gallery,
    required this.isAdmin,
    required this.title,
    required this.content,
    required this.name,
    required this.like,
    required this.dislike,
    required this.createdAt,
    this.password,
  });

  factory BoardModels.fromJson(Map<String, dynamic> json) {
    return BoardModels(
      id: json['id'],
      gallery: json['gallery'],
      isAdmin: json['is_admin'],
      title: json['title'],
      content: json['content'],
      name: json['name'],
      like: json['like'],
      dislike: json['dislike'],
      createdAt: json['created_at'],
    );
  }

  Map<String, dynamic> toJsonForPost() => {
        'gallery': gallery,
        'title': title,
        'content': content,
        'name': name,
        'password': password,
      };

  Map<String, dynamic> toJsonForPatch() => {
        'title': title,
        'content': content,
        'password': password,
      };
}
