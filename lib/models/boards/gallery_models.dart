class GalleryModels {
  final int id;
  final String name;
  final String description;
  final String image;
  final int view;
  final String createdAt;

  GalleryModels({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.view,
    required this.createdAt,
  });

  GalleryModels.init()
      : id = 0,
        name = '김주은 갤러리',
        description = '김주은 죽이기위해',
        image = '대충 이미지',
        view = 10,
        createdAt = '2024-09-03T10:54:41.215Z';

  factory GalleryModels.fromJson(Map<String, dynamic> json) => GalleryModels(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        image: json['image'],
        view: json['view'],
        createdAt: json['createdAt'],
      );

  Map<String, dynamic> toJsonForPost() => {
        'name': name,
        'image': image,
        'description': description,
      };
}
