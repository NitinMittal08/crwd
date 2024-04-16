
// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:crwd/UI/MainScreens/main_page.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class HostBasicFive extends StatefulWidget {
  const HostBasicFive({Key? key}) : super(key: key);

  @override
  State<HostBasicFive> createState() => _HostBasicFiveState();
}

class _HostBasicFiveState extends State<HostBasicFive> {

  XFile? _pickedFile;
  List<File?> image=[];
  List<File?> reversedAnimals=[];
  CroppedFile? _croppedFile;
  bool containsEmptyItem = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    image.clear();
    image.add(File(""));
    reversedAnimals = image.reversed.toList();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        backgroundColor: Colour.bgColor,
        appBar: AppBar(
          backgroundColor: Colour.bgColor,
          title: CommonFun.textBold("Host Event", 16, TextAlign.start, color: Colour.black),
          leading: BackButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.black),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(right: 15,left: 15,bottom: 5,top: 15),
                    child: CommonFun.textBold("Upload Event Photos ", 18, TextAlign.start, color: Colour.black)),

                Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(right: 15,left: 15,bottom: 15),
                    child:    CommonFun.textMed("Please add at least Five photo of Event", 12, TextAlign.start, color: Colour.greyText)),


                Container(
                  margin:const EdgeInsets.only(top: 20),
                  height: 350,
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    padding: EdgeInsets.zero,
                    shrinkWrap: false,
                    physics:const  NeverScrollableScrollPhysics(),
                    children: List.generate(reversedAnimals.length, (index) {
                      return reversedAnimals[index]!.path.isEmpty
                          ?InkWell(
                          onTap: () async{
                            await openImageSelectionDialog1(context);

                            if(reversedAnimals.length  >= 6){
                              for(int i=0;i<reversedAnimals.length;i++){
                                if(reversedAnimals[i]!.path.isEmpty){
                                  reversedAnimals.removeAt(i);
                                }
                              }
                              for(int i=0;i<image.length;i++){
                                if(image[i]!.path.isEmpty){
                                  image.removeAt(i);
                                }
                              }
                            }



                            debugPrint('reversedAnimals !  $reversedAnimals');
                            debugPrint('reversedAnimals.length !  ${reversedAnimals.length}');
                            setState(() {  });
                          },
                          child: Image.asset('assets/images/image_box.png',fit: BoxFit.fill,height: 200,))
                          : Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                              height: 200,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.file(File(reversedAnimals[index]!.path.toString()),fit: BoxFit.fill,),
                              )),

                          InkWell(
                            onTap: () async{

                              for (int i=0;i<reversedAnimals.length;i++) {
                                if (reversedAnimals[i]!.path.isEmpty) {
                                  containsEmptyItem = true;
                                  break;
                                }else{
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

                              reversedAnimals.removeAt(index);

                              debugPrint('reversedAnimals $reversedAnimals');
                              debugPrint('reversedAnimals.length ${reversedAnimals.length}');
                              setState(() {});
                            },
                            child: Image.asset('assets/images/cross.png',height: 25,),
                          )
                        ],
                      );
                    },),
                  ),
                ),






                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 15, left: 15,top: 100),
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
                        child: CommonFun.textBold("Submit", 16, TextAlign.center,
                            color: Colour.white),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MainPage(index: 1,)));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),),
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
              viewPort:
              const CroppieViewPort(width: 480, height: 200, type: 'circle'),
            ),
          ],
        );

        if (croppedFile != null) {
          _croppedFile = croppedFile;
          image.add(File(_croppedFile!.path.toString()));

          reversedAnimals = image.reversed.toList();
        }
      }
      setState(()  { });
    }

  }
}
