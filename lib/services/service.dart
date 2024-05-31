class ImageService {
  Future<List<String>> getImages(int initialTime, int amount) async {
    try {
      List<String> images = [];

      for (int i = initialTime; i < initialTime + amount; i++) {
        images.add('https://picsum.photos/id/$i/1200');
      }

      await Future.delayed(const Duration(seconds: 2));

      return images;
    } catch (e) {
      rethrow;
    }
  }
}
