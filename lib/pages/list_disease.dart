import 'package:flutter/material.dart';
import 'package:tomato_final/utils/description.dart';

class ListDisease extends StatefulWidget {
  const ListDisease({Key? key}) : super(key: key);

  @override
  State<ListDisease> createState() => _ListDiseaseState();
}

class _ListDiseaseState extends State<ListDisease> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tomato Diseases Supported",
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: diseases.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context,index){
          return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: (){
                  showInfo(index);
                },
                title: Text(diseases[index].TomDisease),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/leafimages/${diseases[index].pic}',
                  ),
                ),
              ),
            ),
          );
        },

      ),
    );
  }
}
