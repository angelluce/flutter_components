import 'package:flutter/material.dart';
import 'package:flutter_basic_app/services/service.dart';

class InfinityScrollScreen extends StatefulWidget {
  const InfinityScrollScreen({super.key});

  static const String routeName = '/infinity-scroll';

  @override
  State<InfinityScrollScreen> createState() => _InfinityScrollScreenState();
}

class _InfinityScrollScreenState extends State<InfinityScrollScreen> {
  List<String>? images;
  final imagesService = ImageService();

  int initialImages = 0;
  int ammountImages = 10;

  bool isLoading = false;

  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    getImages();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  Future<void> getImages() async {
    images = await imagesService.getImages(initialImages, ammountImages);
    setState(() {});
  }

  Future<void> paginator() async{
    initialImages += initialImages + ammountImages;
    isLoading = true;
    final newImages = await imagesService.getImages(initialImages, ammountImages);
    isLoading = false;
    images!.addAll(newImages);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Infinity Scroll'),
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_upward),
              onPressed: () {
                // scrollController.jumpTo(scrollController.position.maxScrollExtent);
                scrollController.animateTo(
                  scrollController.position.minScrollExtent,
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_downward),
              onPressed: () {
                // scrollController.jumpTo(scrollController.position.maxScrollExtent);
                scrollController.animateTo(
                  scrollController.position.maxScrollExtent,
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceInOut,
                );
              },
            )
          ],
        ),
        body: Builder(
          builder: (context) {
            if (images == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (images!.isEmpty) {
              return const Center(
                child: Text('No hay imágenes'),
              );
            }

            return NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if(notification.metrics.atEdge && notification.metrics.pixels > 0 && !isLoading) {
                  print('Llegamos al final de la lista');
                  paginator();
                }

                if(notification.metrics.pixels > (notification.metrics.maxScrollExtent - 500)) {
                  print('Estamos llegandos al final de la lista');
                }

                return true;
              },
              child: ListView.builder(
                controller: scrollController,
                itemCount: images!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Image.network(images![index], fit: BoxFit.cover, height: 300,),
                  );
                },
              ),
            );
          },
          ),
        // body: ListView.builder(
        //   itemCount: images?.length ?? 0,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       child: Image.network(images![index], fit: BoxFit.cover, height: 300,),
        //     );
        //   },
        // )
        // body: FutureBuilder(
        //   future: ImageService().getImages(0, 10),
        //   builder: (context, snapshot) {
        //     if (snapshot.connectionState == ConnectionState.waiting) {
        //       return const Center(
        //         child: CircularProgressIndicator(),
        //       );
        //     }
        //     if (snapshot.hasError) {
        //       return Center(
        //         child: Text('Error: ${snapshot.error}'),
        //       );
        //     }
        //     if (!snapshot.hasData) {
        //       return const Center(
        //         child: Text('No hay datos'),
        //       );
        //     }

        //     final data = snapshot.data!;

        //     return ListView.builder(
        //       itemCount: data.length,
        //       itemBuilder: (context, index) {
        //         return Card(
        //           child: Image.network(data[index], fit: BoxFit.cover, height: 300,),
        //         );
        //       },
        //     );
          // },
        // )
        );
  }
}
