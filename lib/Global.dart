class Videos {
  final int id;
  final String categories;
  final String image;
  final String video;

  Videos({
    required this.id,
    required this.categories,
    required this.image,
    required this.video,
  });
}

List<Videos> videos = [
  Videos(
    id: 1,
    categories: 'Nature',
    image: 'assets/image/Nature.png',
    video: 'asset/Video/Nature.mp4',
  ),
  Videos(
    id: 2,
    categories: 'Motivational',
    image: 'assets/image/Gym.png',
    video: 'asset/Video/Gym1.mp4',
  ),
  Videos(
    id: 3,
    categories: 'Sports',
    image: 'assets/image/Ronaldo.png',
    video: 'asset/Video/Nature.mp4',
  ),
  Videos(
    id: 4,
    categories: 'Animals',
    image: 'assets/image/Lion1.png',
    video: 'asset/Video/Nature.mp4',
  ),
  Videos(
    id: 5,
    categories: 'Movies',
    image: 'assets/image/Pushpa.png',
    video: 'asset/Video/Nature.mp4',
  ),
];
String? videoLink;
String? CateName;

class Global {
  static int? image;
}
