import 'dart:io';

// import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';



class Classifier{
  Classifier();

  classifyImage(var image) async{
    File? file;
    file = File(image!.path);
    await Tflite.loadModel(
        model: "assets/model_unquant.tflite",
        labels: "assets/labels.txt",
        numThreads: 1, // defaults to 1
        isAsset: true, // defaults to true, set to false to load resources outside assets
        useGpuDelegate: false // defaults to false, set to true to use GPU delegate
    );

    var predictions = await Tflite.runModelOnImage(
        path: file.path,   // required
        imageMean: 127.5,   // defaults to 117.0
        imageStd: 127.5,  // defaults to 1.0
        numResults: 2,    // defaults to 5
        threshold: 0.6,   // defaults to 0.1
        asynch: true      // defaults to true
    );

    // await Tflite.close();
    return predictions;

  }

}

