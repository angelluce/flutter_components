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

  final initialImages = 0;
  final ammountImages = 10;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Infinity Scroll'),
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_downward),
              onPressed: () {
                scrollController.jumpTo(scrollController.position.maxScrollExtent);
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

            return ListView.builder(
              controller: scrollController,
              itemCount: images!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Image.network(images![index], fit: BoxFit.cover, height: 300,),
                );
              },
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
