import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tomato_final/dl_model/processing_model.dart';
import 'package:tomato_final/utils/description.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({Key? key}) : super(key: key);

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {

  List<DisInfo> diseases = [
    DisInfo(TomDisease:'Tomato Bacterial Spot', pic: 'bacterialspot.JPG'),
    DisInfo(TomDisease:'Tomato Early Blight', pic: 'earlyblight.JPG'),
    DisInfo(TomDisease:'Tomato Healthy', pic: 'healthy.JPG'),
    DisInfo(TomDisease:'Tomato Late Blight', pic: 'lateblight.JPG'),
    DisInfo(TomDisease:'Tomato Leaf Mold', pic: 'leafmold.JPG'),
    DisInfo(TomDisease:'Tomato Septoria Leaf Spot', pic: 'septorialeafspot.JPG'),
    DisInfo(TomDisease:'Tomato Spider Mites', pic: 'spidermites.JPG'),
    DisInfo(TomDisease:'Tomato Target Spot', pic: 'targetspot.JPG'),
    DisInfo(TomDisease:'Tomato Mosaic Virus', pic: 'tmv.JPG'),
    DisInfo(TomDisease:'Tomato Yellow Leaf Curl', pic: 'ylc.JPG'),
    DisInfo(TomDisease:'Not Tomato Leaf', pic: 'ntl.JPG'),

  ];
  void showInfo(index){
    DisInfo instance = diseases[index];
    Navigator.pushNamed(context, '/info',arguments: instance);
  }
  findIndex(String){
    int j=0;
    for (var i=0;i<11;i++){
      if (diseases[i].TomDisease == String)
        j = i;
    }
    return j;
  }

  final ImagePicker _picker = ImagePicker();
  var image;
  final Classifier classifier = Classifier();

  String tomatoDisease = "";
  String confidence = "";
  late int index;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            height: size.height*0.4,
              width: size.width,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: tomatoDisease == "" ?
                    const AssetImage('assets/background.jpg') as ImageProvider:
                    FileImage(
                      File(image.path),
                    ),
                    fit: BoxFit.cover
                  ),
                ),
          )
          ),
          Positioned(
            top: size.height*0.35,
            height: size.height*0.65,
            width: size.width,
            child: Container(
              // color: Colors.white,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft:  Radius.circular(36.0),
                      topRight:  Radius.circular(36.0)
                  )
              ),
              child: Column(
                children: [
                  const SizedBox(height: 80,),
                  const Text(
                    'Prediction',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10,),
                   Text(
                    tomatoDisease == ""? "" : "$confidence% $tomatoDisease",
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  if (tomatoDisease != "")
                    TextButton.icon(

                      onPressed: (){
                        index =findIndex(tomatoDisease);
                        showInfo(index);
                      },
                      icon: Icon(
                          Icons.content_paste_search,
                          color: Colors.grey[300]
                      ),
                      label: Text(
                        'FInd more about $tomatoDisease',
                        style: TextStyle(
                            color: Colors.grey[300]
                        ),
                      ),

                    ),
                  const SizedBox(height: 70,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                // onSurface: Colors.orange,
                                onPrimary: Colors.orange,
                                shadowColor: Colors.orange,
                                elevation: 10.0,
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(16.0)
                            ),
                            child: const Icon(
                              Icons.camera_alt,
                              size: 35,
                              color: Colors.orange,
                            ),
                            onPressed: () async {
                              image = await _picker.pickImage(source: ImageSource.camera);
                              final outputs = await classifier.classifyImage(image);
                              print(outputs);
                              setState(() {
                                tomatoDisease = outputs![0]['label'].toString();
                                confidence = (double.parse(outputs![0]['confidence'].toString().substring(0,7))*100).toStringAsFixed(3);
                              });



                            },
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Text(
                              'Take Photo',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                              ),

                            ),
                          ),

                        ],
                      ),
                      const SizedBox(width: 60,),
                      Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              onPrimary: Colors.blue[800],
                              shadowColor: Colors.blue[800],
                              elevation: 10.0,
                              shape: const CircleBorder(),
                                padding: const EdgeInsets.all(16.0)
                            ),
                            child: Icon(
                              Icons.photo,
                              size: 35,
                              color: Colors.blue[800],
                            ),
                            onPressed: () async {
                              image = await _picker.pickImage(source: ImageSource.gallery);
                              final outputs = await classifier.classifyImage(image);
                              print(outputs);
                              setState(() {
                                tomatoDisease = outputs![0]['label'].toString();
                                confidence = (double.parse(outputs![0]['confidence'].toString().substring(0,7))*100).toStringAsFixed(3);;
                              });



                            },
                          ),
                          const Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Text(
                                  "Gallery",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                    fontWeight: FontWeight.bold
                                  )
                              )
                          ),

                        ],
                      )
                    ],
                  ),



                ],
              ),
          ),
          )
        ],

      ),
    );
  }
}

