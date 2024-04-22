

import 'package:flutter/material.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class ReferScreen extends StatefulWidget {
  const ReferScreen({super.key});

  @override
  State<ReferScreen> createState() => _ReferScreenState();
}

class _ReferScreenState extends State<ReferScreen> {
  
  
  List<Model> list  =[];
  
  
  
  @override
  void initState() {
    super.initState();
    list.add(Model(' ', "Air Drop"));
    list.add(Model(' ', "Message"));
    list.add(Model(' ', "Mail"));
    list.add(Model(' ', "Slack"));
    list.add(Model(' ', "Reminder"));
  }
  
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        backgroundColor: Colour.whiteApp,
        body:
    
    
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,height: double.infinity,
                child: Container(
                    margin: const EdgeInsets.all(30),
                    child: Image.asset('assets/images/invite.png')))),


         Expanded(flex: 5, child: Container(
           width: double.infinity,height: double.infinity,
           child: Column(
             children: [
               CommonFun.textBold1('Invite your friends', 14, TextAlign.center, color: Colour.black),
               CommonFun.textReg('Copy your code,share it with your friends.', 12, TextAlign.center, color: Colour.black.withOpacity(.3)),




               Container(
                 margin: const EdgeInsets.only(right: 30,left: 30,top: 20),
                 decoration: const BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage('assets/images/refer_border.png'),
                       fit: BoxFit.fill,
                     )
                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(4.0),
                   child: Container(
                     margin: const EdgeInsets.only(right: 3,left: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         CommonFun.textReg('AVCD 12145 ASD', 14, TextAlign.center, color: Colour.black.withOpacity(.3)),

                         Container(
                           height: 35,
                           width: 60,
                           decoration: BoxDecoration(
                             color: Colour.pink,
                             borderRadius: const BorderRadius.all(
                               Radius.circular(50.0),
                             ),
                           ),
                           child: InkWell(
                             child: SizedBox(
                               child: Center(
                                 child: CommonFun.textBold1("Copy", 12, TextAlign.center, color: Colour.white),
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
                 ),
               ),



               Container(
                   margin: const EdgeInsets.only(top: 20,bottom: 20),
                   child: CommonFun.textReg('OR', 16, TextAlign.center, color: Colour.black.withOpacity(.3))),

               




               Container(
                 height: 100,
                 width: double.infinity,
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: list.length,
                     itemBuilder: (context, index) {
                       return Padding(
                         padding: const EdgeInsets.all(4.0),
                         child: Container(
                           margin: const EdgeInsets.only(right: 5,left: 5),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [

                               Image.asset('assets/images/crwd_icon.png',width: 65,height: 65,),
                               Container(
                                 alignment: Alignment.center,
                                   width: 60,
                                   child: CommonFun.textBold1(list[index].name.toString(), 14, TextAlign.center, color: Colour.black)),


                             ],
                           ),
                         ),
                       );
                     },),
               )

             ],
           ),
         ))
      ],
    )
    
    
    
    ));
  }
  
  
  
  
}



class Model{
  String? image;
  String? name;

  Model(this.image, this.name);

}
