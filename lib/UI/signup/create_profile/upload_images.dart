// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:crwd/UI/signup/create_profile/bio_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class UploadImages extends StatefulWidget {
  const UploadImages({Key? key}) : super(key: key);

  @override
  State<UploadImages> createState() => _UploadImagesState();
}

class _UploadImagesState extends State<UploadImages> {

  List<File?> image = [];
  List<File?> reversedAnimals = [];

  bool containsEmptyItem = false;

  @override
  void initState() {
    super.initState();
    image.clear();
    image.add(File(""));
    reversedAnimals = image.reversed.toList();
  }


  XFile? _pickedFile;
  CroppedFile? _croppedFile;

  @override
  Widget build(BuildContext context) {


    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 90) / 2;
    final double itemWidth = size.width / 2;

    return SafeArea(
        child: GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
          backgroundColor: Colour.bgColor,
          appBar: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: Colour.bgColor,
            title: SizedBox(
              width: MediaQuery.of(context).size.width / 1.7,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Image.asset(
                        'assets/images/icon/back_icon.png',
                        width: 16,
                        height: 10,
                        fit: BoxFit.fill,
                      )),
                  CommonFun.indicators(5),
                ],
              ),
            ),
          ),
          body: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Container(
                  margin: const EdgeInsets.all(15),
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CommonFun.textBold("Upload Your Photos", 16, TextAlign.start, color: Colour.black),
                      CommonFun.textMed("Please add at least Five photo of yourself with nobody else in the picture", 12, TextAlign.start,
                          color: Colour.greyText),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        height: 350,
                        child: GridView.count(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          childAspectRatio: (itemWidth / itemHeight),
                          mainAxisSpacing: 10,
                          padding: EdgeInsets.zero,
                          shrinkWrap: false,
                          physics: const NeverScrollableScrollPhysics(),
                          children: List.generate(
                            reversedAnimals.length,
                                (index) {
                              return reversedAnimals[index]!.path.isEmpty
                                  ? InkWell(
                                  highlightColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  onTap: () async {
                                    await openImageSelectionDialog1(context);

                                    if (reversedAnimals.length >= 6) {
                                      for (int i = 0; i < reversedAnimals.length; i++) {
                                        if (reversedAnimals[i]!.path.isEmpty) {
                                          reversedAnimals.removeAt(i);
                                        }
                                      }
                                      for (int i = 0; i < image.length; i++) {
                                        if (image[i]!.path.isEmpty) {
                                          image.removeAt(i);
                                        }
                                      }
                                    }

                                    debugPrint('reversedAnimals !  $reversedAnimals');
                                    debugPrint('reversedAnimals.length !  ${reversedAnimals.length}');
                                    setState(() {});
                                  },
                                  child: Image.asset(
                                    'assets/images/image_box.png',
                                    fit: BoxFit.fill,
                                    height: 200,
                                  ))
                                  : Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Container(
                                      height: itemHeight,width: itemWidth,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.file(
                                          File(reversedAnimals[index]!.path.toString()),
                                          fit: BoxFit.fill,
                                        ),
                                      )),
                                  InkWell(
                                    onTap: () async {
                                      for (int i = 0; i < reversedAnimals.length; i++) {
                                        if (reversedAnimals[i]!.path.isEmpty) {
                                          containsEmptyItem = true;
                                          break;
                                        } else {
                                          containsEmptyItem = false;
                                        }
                                      }

                                      if (containsEmptyItem) {
                                        print("List contains an empty item.");
                                      } else {
                                        print("List does not contain an empty item.");
                                        image.add(File(""));
                                        reversedAnimals = image;
                                      }

                                      reversedAnimals.remove(image[index]);
                                      image.remove(image[index]);

                                      debugPrint('reversedAnimals $reversedAnimals');
                                      debugPrint('reversedAnimals.length ${reversedAnimals.length}');
                                      setState(() {});
                                    },
                                    child: Image.asset(
                                      'assets/images/cross.png',
                                      height: 25,
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: CommonFun.textMed("Hold & Drag your photos change the order", 12, TextAlign.center,
                            color: Colour.greyText),
                      ),

                      Expanded(child: Container(color: Colors.transparent)),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10),
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colour.pink,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: InkWell(
                          child: SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: Center(
                              child: CommonFun.textBold("Continue", 16, TextAlign.center, color: Colour.white),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const BioScreen()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
      ),
    ));
  }

  //!@CameraCode
  Future openImageSelectionDialog1(BuildContext context) async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      _pickedFile = pickedFile;
      if (_pickedFile != null) {
        final croppedFile = await ImageCropper().cropImage(
          sourcePath: _pickedFile!.path,
          aspectRatio: const CropAspectRatio(ratioX: 16, ratioY: 9),
          compressFormat: ImageCompressFormat.jpg,
          compressQuality: 10,
          uiSettings: [
            AndroidUiSettings(
              toolbarTitle: 'Crwd',
              toolbarColor: Colour.black,
              hideBottomControls: true,
              toolbarWidgetColor: Colour.pink,
              lockAspectRatio: false,
            ),
            IOSUiSettings(title: 'Cropper'),
            WebUiSettings(
              context: context,
              presentStyle: CropperPresentStyle.page,
              boundary: const CroppieBoundary(
                width: 200,
                height: 200,
              ),
              viewPort: const CroppieViewPort(width: 480, height: 200, type: 'circle'),
            ),
          ],
        );

        if (croppedFile != null) {
          _croppedFile = croppedFile;
          image.add(File(_croppedFile!.path.toString()));

          reversedAnimals = image.reversed.toList();
        }
      }
      setState(() {});
    }
  }
}
