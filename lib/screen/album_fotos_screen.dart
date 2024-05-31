import 'package:flutter/material.dart';

class AlbumFotosScreen extends StatelessWidget {
  const AlbumFotosScreen({super.key});

  static const String routeName = '/album-fotos';

  final photoUrl =
      'https://media.licdn.com/dms/image/D4D03AQEuxCCeZAcMjw/profile-displayphoto-shrink_400_400/0/1674580698988?e=1722470400&v=beta&t=yEr37wVfsZ7mp7c4AuSQHXEoEw-eyxfViOSUBFCMdPw';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: const Text('Álbum de fotos'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: const Text('AL'),
              // radius: 15,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              children: [
                CircleAvatar(
                  // backgroundImage: NetworkImage(photoUrl),
                  radius: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(photoUrl),
                  ),
                ),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Angel Lucero',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Desarrollador de Software',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 500,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  childAspectRatio: 1,
                ),
                children: const [
                  Text('Foto 1'),
                  Text('Foto 2'),
                  Text('Foto 3'),
                  Text('Foto 4'),
                  Text('Foto 5'),
                  Text('Foto 6'),
                  Text('Foto 7'),
                  Text('Foto 8'),
                  Text('Foto 9'),
                  Text('Foto 10'),
                ],
              ),
            ),
            SizedBox(
              height: 500,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                childAspectRatio: 1,
                children: const [
                  Text('Texto 1'),
                  Text('Texto 2'),
                  Text('Texto 3'),
                  Text('Texto 4'),
                  Text('Texto 5'),
                  Text('Texto 6'),
                  Text('Texto 7'),
                  Text('Texto 8'),
                  Text('Texto 9'),
                  Text('Texto 10'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
