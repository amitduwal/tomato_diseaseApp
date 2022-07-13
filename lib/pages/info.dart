import 'package:flutter/material.dart';
import 'package:tomato_final/utils/description.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {

  static TextStyle optionStyle1 =
  TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[600]);
  static final List<Widget> _widgetList = <Widget>[
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            "Cause of Disease",
            style: optionStyle1
        ),
        const SizedBox(height: 10.0,),
        const Text("""The disease is caused by four species of Xanthomonas (X. euvesicatoria, X. gardneri, X. perforans, and X. vesicatoria). All four bacteria are strictly aerobic, gram-negative rods with a long whip-like flagellum (tail) that allows them to move in water, which allows them to invade wet plant tissue and cause infection.""",
        textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 10.0,),
        Text(
            "Prevention and Cure",
            style: optionStyle1
        ),
        Row(children:const [
          Text('1) '),
          Expanded(child: Text('The most effective management strategy is the use of pathogen-free certified seeds and disease-free transplants to prevent the introduction of the pathogen into greenhouses and field production areas. Inspect plants very carefully and reject infected transplants- including your own!',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('2) '),
          Expanded(child: Text('In transplant production greenhouses, minimize overwatering and handling of seedlings when they are wet.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('3) '),
          Expanded(child: Text('Trays, benches, tools, and greenhouse structures should be washed and sanitized between seedlings crops.',textAlign: TextAlign.justify))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('4) '),
          Expanded(child: Text('Do not spray, tie, harvest, or handle wet plants as that can spread the disease',textAlign: TextAlign.justify))
        ], crossAxisAlignment: CrossAxisAlignment.start),

      ],
    ),


    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            "Cause of Disease",
            style: optionStyle1
        ),
        const SizedBox(height: 10.0,),
        const Text("""Early blight can be caused by two different closely related fungi, Alternaria tomatophila and Alternaria solani. Alternaria tomatophila is more virulent on tomato than A. solani, so in regions where A. tomatophila is found, it is the primary cause of early blight on tomato. However, if A.tomatophila is absent, A.solani will cause early blight on tomato.""",
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 10.0,),
        Text(
            "Prevention and Cure",
            style: optionStyle1
        ),
        Row(children:const [
          Text('1) '),
          Expanded(child: Text('Use pathogen-free seed, or collect seed only from disease-free plants.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('2) '),
          Expanded(child: Text('Rotate out of tomatoes and related crops for at least two years.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('3) '),
          Expanded(child: Text('Control susceptible weeds such as black nightshade and hairy nightshade, and volunteer tomato plants throughout the rotation.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('4) '),
          Expanded(child: Text('Fertilize properly to maintain vigorous plant growth. Particularly, do not over-fertilize with potassium and maintain adequate levels of both nitrogen and phosphorus.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('5) '),
          Expanded(child: Text('Avoid working in plants when they are wet from rain, irrigation, or dew.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('6) '),
          Expanded(child: Text('Use drip irrigation instead of overhead irrigation to keep foliage dry.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
      ],
    ),

    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            "The Tomato Plant is healthy. No need to worry ",
            style: optionStyle1
        ),
        const SizedBox(height: 10.0,),


      ],
    ),


    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            "Cause of Disease",
            style: optionStyle1
        ),
        const SizedBox(height: 10.0,),
        const Text("""Late blight is a potentially devastating disease of tomato, infecting leaves, stems and fruits of plants. The disease spreads quickly in fields and can result in total crop failure if untreated. Late blight is caused by the oomycete Phytophthora infestans. Oomycetes are fungus-like organisms also called water molds, but they are not true fungi.""",
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 10.0,),
        Text(
            "Prevention and Cure",
            style: optionStyle1
        ),
        Row(children:const [
          Text('1) '),
          Expanded(child: Text('Avoid planting tomatoes on sites that were previously in potatoes or close to potatoes.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('2) '),
          Expanded(child: Text(' Sequential planting or planting several crops of tomatoes over time will reduce the risk of late blight destroying all tomatoes at once.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('3) '),
          Expanded(child: Text('Spraying fungicides is the most effective way to prevent late blight. ',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
      ],
    ),

    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            "Cause of Disease",
            style: optionStyle1
        ),
        const SizedBox(height: 10.0,),
        const Text("""Leaf mold is caused by the fungus Passalora fulva (previously called Fulvia fulva or Cladosporium fulvum). It is not known to be pathogenic on any plant other than tomato.""",
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 10.0,),
        Text(
            "Prevention and Cure",
            style: optionStyle1
        ),
        Row(children:const [
          Text('1) '),
          Expanded(child: Text('Use drip irrigation and avoid watering foliage.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('2) '),
          Expanded(child: Text('Space plants to provide good air movement between rows and individual plants.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('3) '),
          Expanded(child: Text('Stake, string or prune to increase airflow in and around the plant.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('4) '),
          Expanded(child: Text('Sterilize stakes, ties, trellises etc. with 10 percent household bleach or commercial sanitizer.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('5) '),
          Expanded(child: Text('Circulate air in greenhouses or tunnels with vents and fans and by rolling up high tunnel sides to reduce humidity around plants.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('6) '),
          Expanded(child: Text('Keep night temperatures in greenhouses higher than outside temperatures to avoid dew formation on the foliage.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('7) '),
          Expanded(child: Text('Remove crop residue at the end of the season. Burn it or bury it away from tomato production areas.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),

      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            "Cause of Disease",
            style: optionStyle1
        ),
        const SizedBox(height: 10.0,),
        const Text("""Septoria leaf spot is caused by a fungus, Septoria lycopersici. It is one of the most destructive diseases of tomato foliage and is particularly severe in areas where wet, humid weather persists for extended periods.""",
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 10.0,),
        Text(
            "Prevention and Cure",
            style: optionStyle1
        ),
        Row(children:const [
          Text('1) '),
          Expanded(child: Text('Remove diseased leaves.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('2) '),
          Expanded(child: Text('Improve air circulation around the plants.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('3) '),
          Expanded(child: Text('Mulch around the base of the plants',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('4) '),
          Expanded(child: Text('Do not use overhead watering.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('5) '),
          Expanded(child: Text('Use fungicidal sprayes.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
      ],
    ),

    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            "Cause of Disease",
            style: optionStyle1
        ),
        const SizedBox(height: 10.0,),
        const Text("""The two-spotted spider mite is the most common mite species that attacks vegetable and fruit crops.Outbreaks are often caused by the use of broad-spectrum insecticides which interfere with the numerous natural enemies that help to manage mite populations.""",
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 10.0,),
        Text(
            "Prevention and Cure",
            style: optionStyle1
        ),
        Row(children:const [
          Text('1) '),
          Expanded(child: Text('Avoid early season, broad-spectrum insecticide applications for other pests.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('2) '),
          Expanded(child: Text('Do not over-fertilize',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('3) '),
          Expanded(child: Text('Overhead irrigation or prolonged periods of rain can help reduce populations.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
      ],
    ),

    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            "Cause of Disease",
            style: optionStyle1
        ),
        const SizedBox(height: 10.0,),
        const Text("""The fungus causes plants to lose their leaves; it is a major disease. If infection occurs before the fruit has developed, yields are low.""",
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 10.0,),
        Text(
            "Prevention and Cure",
            style: optionStyle1
        ),
        Row(children:const [
          Text('1) '),
          Expanded(child: Text('Remove a few branches from the lower part of the plants to allow better airflow at the base',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('2) '),
          Expanded(child: Text('Remove and burn the lower leaves as soon as the disease is seen, especially after the lower fruit trusses have been picked.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('3) '),
          Expanded(child: Text('Keep plots free from weeds, as some may be hosts of the fungus.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('4) '),
          Expanded(child: Text('Do not use overhead irrigation; otherwise, it will create conditions for spore production and infection.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),

      ],
    ),

    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            "Cause of Disease",
            style: optionStyle1
        ),
        const SizedBox(height: 10.0,),
        const Text("""Seed can be infected and pass the virus to the plant but the disease is usually introduced and spread primarily through human activity. The virus can easily spread between plants on workers' hands, tools, and clothes with normal activities such as plant tying, removing of suckers, and harvest""",
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 10.0,),
        Text(
            "Prevention and Cure",
            style: optionStyle1
        ),
        Row(children:const [
          Text('1) '),
          Expanded(child: Text('Purchase transplants only from reputable sources. Ask about the sanitation procedures they use to prevent disease',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('2) '),
          Expanded(child: Text('Inspect transplants prior to purchase. Choose only transplants showing no clear symptoms.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('3) '),
          Expanded(child: Text('Avoid planting in fields where tomato root debris is present, as the virus can survive long-term in roots.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('4) '),
          Expanded(child: Text('Wash hands with soap and water before and during the handling of plants to reduce potential spread between plants.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),

      ],
    ),

    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            "Cause of Disease",
            style: optionStyle1
        ),
        const SizedBox(height: 10.0,),
        const Text("""TYLCV is transmitted by the insect vector Bemisia tabaci in a persistent-circulative nonpropagative manner. The virus can be efficiently transmitted during the adult stages.""",
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 10.0,),
        Text(
            "Prevention and Cure",
            style: optionStyle1
        ),
        Row(children:const [
          Text('1) '),
          Expanded(child: Text('Currently, the most effective treatments used to control the spread of TYLCV are insecticides and resistant crop varieties.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('2) '),
          Expanded(child: Text('The effectiveness of insecticides is not optimal in tropical areas due to whitefly resistance against the insecticides; therefore, insecticides should be alternated or mixed to provide the most effective treatment against virus transmission.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        Row(children:const [
          Text('3) '),
          Expanded(child: Text('Other methods to control the spread of TYLCV include planting resistant/tolerant lines, crop rotation, and breeding for resistance of TYLCV. As with many other plant viruses, one of the most promising methods to control TYLCV is the production of transgenic tomato plants resistant to TYLCV.',textAlign: TextAlign.justify,))
        ], crossAxisAlignment: CrossAxisAlignment.start),

      ],
    ),


    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            "The image you uploaded was not of tomato leaf",
            style: optionStyle1
        ),
        const SizedBox(height: 10.0,),


      ],
    ),



  ];

  Map desc ={
    'Tomato Bacterial Spot': _widgetList[0],
    'Tomato Early Blight': _widgetList[1],
    'Tomato Healthy': _widgetList[2],
    'Tomato Late Blight': _widgetList[3],
    'Tomato Leaf Mold': _widgetList[4],
    'Tomato Septoria Leaf Spot': _widgetList[5],
    'Tomato Spider Mites': _widgetList[6],
    'Tomato Target Spot': _widgetList[7],
    'Tomato Mosaic Virus': _widgetList[8],
    'Tomato Yellow Leaf Curl': _widgetList[9],
    'Not Tomato Leaf': _widgetList[10],
  };





  @override
  Widget build(BuildContext context) {
    DisInfo instance = ModalRoute.of(context)!.settings.arguments as DisInfo;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text('More Info on Disease'),
        centerTitle: true,
        elevation: 0,

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/leafimages/${instance.pic}'),
                  radius: 40,
                ),
              ),
              const Divider(
                height: 60.0,
                color: Colors.amber,
              ),
              Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.grey[600],
                    letterSpacing: 2.0,
                  )
              ),
              const SizedBox(height: 10.0),
              Text(
                  instance.TomDisease,
                  style: TextStyle(
                      color: Colors.orange[700],
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold
                  )
              ),
              const SizedBox(height: 30.0),
              desc[instance.TomDisease],
              // Container(
              //   child: Text(
              //       desc[instance.TomDisease],
              //       textAlign: TextAlign.justify,
              //       style: TextStyle(
              //         color: Colors.grey,
              //
              //
              //       )
              //   ),
              // ),
              const SizedBox(height: 30.0),
            ],

          ),
        ),
      ),
    );
  }
}
