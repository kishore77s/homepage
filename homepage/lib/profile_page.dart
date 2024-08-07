// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   File? _image;

//   final TextEditingController _descriptionController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profile Screen'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // Profile Picture
//             Center(
//               child: GestureDetector(
//                 onTap: () async {
//                   final pickedFile = await ImagePicker().getImage(source: ImageSource.camera);
//                   setState(() {
//                     if (pickedFile != null) {
//                       _image = File(pickedFile.path);
//                     } else {
//                       _image = null;
//                     }
//                   });
//                 },
//                 child: CircleAvatar(
//                   radius: 50,
//                   backgroundImage: _image != null ? Image.file(_image!).image : null,
//                   child: _image == null ? const Icon(Icons.add_a_photo, size: 30) : null,
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),

//             // Profile Description
//             TextField(
//               controller: _descriptionController,
//               decoration: const  InputDecoration(
//                 labelText: 'Profile Description',
//                 border:  OutlineInputBorder(),
//               ),
//               maxLines: 3,
//             ),
//             const SizedBox(height: 20),

//             // GitHub Heat Map
//             // You can use a package like flutter_github_heatmap to display the heat map
//             // For this example, I'll just use a Container
//             Container(
//               height: 100,
//               width: double.infinity,
//               color: Colors.grey,
//               child: const Center(child: Text('GitHub Heat Map')),
//             ),
//             const SizedBox(height: 20),

//             // Horizontal GridView
//             GridView.count(
//               crossAxisCount: 1,
//               shrinkWrap: true,
//               childAspectRatio: 3,
//               children: const [
//                 // Project Manager
//                 Card(
//                   child: Center(child: Text('Project Manager')),
//                 ),
//                 // Honor Score
//                 Card(
//                   child: Center(child: Text('Honor Score')),
//                 ),
//                 // Social Media Handles
//                 Card(
//                   child: Center(child: Text('Social Media Handles')),
//                 ),
//                 // Leader Board Ranking
//                 Card(
//                   child: Center(child: Text('Leader Board Ranking')),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
