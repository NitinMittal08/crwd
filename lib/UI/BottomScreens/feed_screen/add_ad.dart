

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class AddAd extends StatefulWidget {
  const AddAd({super.key});

  @override
  State<AddAd> createState() => _AddAdState();
}

class _AddAdState extends State<AddAd> {

  XFile? _pickedFile;
  CroppedFile? _croppedFile;


  TextEditingController uploadImage =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colour.whiteApp,
            appBar: AppBar(
              backgroundColor: Colour.whiteApp,
              elevation: 0,
              automaticallyImplyLeading: false,
              title: SizedBox(
                width: MediaQuery.of(context).size.width/1.7,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Image.asset('assets/images/icon/back_icon.png',width: 16,height: 10 ,fit: BoxFit.fill,)),
                    const SizedBox(width: 10),
                    CommonFun.textBold('Add Ad', 16, TextAlign.center, color: Colour.black),
                  ],
                ),
              ),
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                margin: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    //textField
                    Container(
                      decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                      margin: const EdgeInsets.only( top: 20),
                      child: TextField(
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: "poppins_Reg",
                          color: Colour.black,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          hintText: "Title",
                          labelStyle: const TextStyle(color: Colors.pink),
                        ),
                      ),
                    ),


                    Container(
                      decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                      margin: const EdgeInsets.only( top: 20),
                      child: TextField(
                        maxLines: 6,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: "poppins_Reg",
                          color: Colour.black,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          hintText: "Description",
                          labelStyle: const TextStyle(color: Colors.pink),
                        ),
                      ),
                    ),


                    Container(
                      decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                      margin: const EdgeInsets.only( top: 20),
                      child: TextField(
                        readOnly: true,
                        controller: uploadImage,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: "poppins_Reg",
                          color: Colour.black,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          hintText: "Upload Ad Image",
                          labelStyle: const TextStyle(color: Colors.pink),
                        ),
                        onTap: () async {
                          await openImageSelectionDialog1(context);
                          setState(() {});
                        },
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(  top: 100, bottom: 20),
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
                            child:
                            CommonFun.textBold("Add Ad", 16, TextAlign.center, color: Colour.white),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }


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
          uploadImage.text =File(_croppedFile!.path.toString()).toString();
        }
      }
      setState(() {});
    }
  }


}
