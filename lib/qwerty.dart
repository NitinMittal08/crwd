/*

import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<AssetEntity> _photos = [];
  int _currentPage = 0;
  final int _pageSize = 20;

  @override
  void initState() {
    super.initState();
    fetchPhotos();
  }

  Future<void> fetchPhotos() async {
    List<AssetEntity> photos = await _fetchNextPage();
    setState(() {
      _photos.addAll(photos);
    });
  }

  Future<List<AssetEntity>> _fetchNextPage() async {
    final List<AssetPathEntity> albums =
    await PhotoManager.getAssetPathList(onlyAll: true);
    final List<AssetEntity> photos =
    await albums[0].getAssetListPaged(size: _pageSize, page: _currentPage);
    _currentPage++;
    return photos;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Pagination Example'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemCount: _photos.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Handle photo tap
            },
            child: FutureBuilder<Uint8List?>(
              future: _photos[index].thumbnailDataWithSize(const ThumbnailSize(200, 200)),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return const Icon(Icons.error);
                } else {
                  return Image.memory(
                    snapshot.data!,
                    fit: BoxFit.cover,
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}
*/
