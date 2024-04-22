// import 'package:flutter/material.dart';
//
//
// class AddPost extends StatefulWidget {
//   const AddPost({super.key});
//
//   @override
//   _AddPostState createState() => _AddPostState();
// }
//
// class _AddPostState extends State<AddPost> {
//   List<AssetEntity> _photos = [];
//   int _pageSize = 50;
//   int _currentPage = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     _loadPhotos();
//   }
//
//   Future<void> _loadPhotos() async {
//     final List<AssetPathEntity> albums = await PhotoManager.getAssetPathList(
//       type: RequestType.image,
//     );
//
//     if (albums.isNotEmpty) {
//       final AssetPathEntity album = albums.first;
//       final List<AssetEntity> assets = await album.getAssetListPaged(
//         _currentPage,
//         _pageSize,
//       );
//
//       setState(() {
//         _photos.addAll(assets);
//         _currentPage++;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Gallery'),
//       ),
//       body: _photos.isEmpty
//           ? Center(
//         child: CircularProgressIndicator(),
//       )
//           : ListView.builder(
//         itemCount: _photos.length + 1,
//         itemBuilder: (context, index) {
//           if (index == _photos.length - 1) {
//             _loadPhotos();
//           }
//           if (index >= _photos.length) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//           final AssetEntity photo = _photos[index];
//           return ListTile(
//             title: Image(
//               image: AssetEntityImageProvider(photo),
//               fit: BoxFit.cover,
//               height: 100.0,
//               width: 100.0,
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
