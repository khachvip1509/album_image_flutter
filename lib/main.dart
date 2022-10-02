import 'package:album_image/album_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Builder(builder: (context) {
          final thumbnailQuality = MediaQuery.of(context).size.width ~/ 3;
          return AlbumImagePicker(
            onSelected: (items) {},
            selectionBuilder: (_, selected, index) {
              if (selected) {
                return Container(
                  decoration: BoxDecoration(
                      border: Border.all()
                  ),
                );
              }
              return Container();
            },
            crossAxisCount: 3,
            maxSelection: 4,
            onSelectedMax: () {
              print('Reach max');
            },
            centerTitle: true,
            albumHeaderTextStyle: const TextStyle(color: Colors.black, fontSize: 14),
            albumBackGroundColor: Colors.white,
            appBarHeight: 45,
            itemBackgroundColor: Colors.grey[100]!,
            appBarColor: Colors.white,
            albumTextStyle: const TextStyle(color: Colors.black, fontSize: 14),
            albumSubTextStyle:
            const TextStyle(color: Colors.grey, fontSize: 10),
            type: AlbumType.image,
            closeWidget: const BackButton(
              color: Colors.black,
            ),
            thumbnailQuality: thumbnailQuality * 3,
          );
        }),
      ),
    );
  }
}
