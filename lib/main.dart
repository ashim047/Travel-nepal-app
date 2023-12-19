
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'Screens/Details.dart';
import 'Screens/Favourite.dart';
import 'Screens/aboutus.dart';
import 'Screens/getstarted.dart';

class Destination {
  final String name;
  final String imageUrl;
  final String imageUrl1;
  final String imageUrl2;
  final String imageUrl3;
  final String imageUrl4;
  final String imageUrl5;
   

  final String price;
  final String location;
  final String details;
  bool isLiked;

  Destination({
  required this.imageUrl2, required this.imageUrl3, required this.imageUrl4, required this.imageUrl5, 
  required this.imageUrl1,
    required this.name,
    required this.imageUrl,
    required this.location,
    required this.details,
    required this.price,
    this.isLiked = false,
  });
}

class DestinationsScreen extends StatefulWidget {



  @override
  _DestinationsScreenState createState() => _DestinationsScreenState();
}

class _DestinationsScreenState extends State<DestinationsScreen> {
 

  
  List<Destination> _destinations = [
    Destination(
      name: 'LUMBINI',
      imageUrl:  'assets/LUMBINI.jpg',
      imageUrl1: 'assets/LUMBINI1.jpg',
      imageUrl2:  'assets/LUMBINI2.jpg',
      imageUrl3: 'assets/LUMBINI3.jpg',
      imageUrl4:  'assets/LUMBINI4.jpg',
      imageUrl5:  'assets/LUMBINI5.jpg',
      location: "Lumbini, Nepal",
      price: "NPR 25000",
      details:
          "Nestled in the Himalayas near the Indian border, the beautiful town of Lumbini is the birthplace of Lord Buddha."
          "Lumbini is a UNESCO World Heritage Site and has a plethora of ancient stupas dating back to 2000 years and monasteries that were built by past dynasties. People come here from all over the world to this abode of Buddhism to study scriptures, meditate, practise yoga, trek, learn more about Buddhism and find inner peace. 'Lumbini' literally means 'The Lovely' in Sanskrit, and true to its name it stands!\n"
          "\nThe entire site is decked up with prayer flags that have blessings and incantations upon them, which have been put up by thousands of tourists. Each of the monasteries here is architecturally distinctive, with beautiful façades and paintings. China, Japan, Sri Lanka, Myanmar, Germany, France and other countries have their monasteries here in Lumbini. Avid trekkers can do the Lumbini Circuit Trek and witness 64 historical and archaeological sites around the area, including visits to villages where one can get an authentic experience of the local culture and hospitality.\n"
          "\n Lumbini is a small town located in the Rupandehi District of Province No. 5 in Nepal. It is famous for being the birthplace of Siddhartha Gautama, who later became the Buddha and is the founder of Buddhism."

          "The town is home to numerous monasteries, temples, and historical sites related to the life and teachings of the Buddha. The most significant of these is the Maya Devi Temple, which marks the spot where the Buddha was born. The temple houses a marker stone that is said to indicate the exact birthplace of the Buddha."

          "Other notable sites in Lumbini include the Ashoka Pillar, which was erected by the Indian emperor Ashoka in 249 BCE to commemorate his visit to the site, and the Sacred Garden, which contains numerous monasteries and meditation centers built by various Buddhist communities from around the world."

          "Lumbini is a UNESCO World Heritage Site and attracts thousands of visitors every year from all over the world who come to pay their respects to the Buddha and to experience the spiritual and cultural significance of this historic site."
    
    ),
    Destination(
      name: 'CHITLANG',
      imageUrl: 'assets/CHITLANG.jpg',
      imageUrl1: 'assets/CHITLANG1.jpg',
      imageUrl2:  'assets/CHITLANG2.jpg',
      imageUrl3: 'assets/CHITLANG3.jpg',
      imageUrl4:  'assets/CHITLANG4.jpg',
      imageUrl5:  'assets/CHITLANG5.jpg',
      location: "Chitlang, Nepal",
      price: "NPR 17000",
      details:
          "Chitlang is an ancient Newar dominant village in Nepal. Surrounded by the Chandragiri hills, it is acclaimed as one of the most popular stops in the old trading routes from Tibet to India and thus holds a rich historical significance. Chitlang serves to be the most preferred destination from Kathmandu for hiking. It is home to more than 100 species of birds, making it a haven for ornithology.\n"
          "\nInspired by Laxmi Prasad Devkota, writer of ‘yatri’ – a Nepalese poem, Chitlang also attracts poets who find serenity in this natural paradise. The homestay experiences and a taste of the hilly life are especially popular here. The people of Chitlang are involved in goat farming and goat cheese is the most popular dairy product of the village. Goat Cheese Homestay, of Ashok Singh Thakuri and family, is an interesting place to stay and learn the process of cheese making and taste organic plum and ground apple wine.",
    ),
    Destination(
      name: 'MUSTANG',
      imageUrl: 'assets/MUSTANG.jpg',
      imageUrl1: 'assets/MUSTANG1.jpg',
      imageUrl2:  'assets/MUSTANG2.jpg',
      imageUrl3: 'assets/MUSTANG3.jpg',
      imageUrl4:  'assets/MUSTANG4.jpg',
      imageUrl5:  'assets/MUSTANG5.jpg',
      location: "Mustang, Nepal",
      price: "NPR 35000",
      details:
          "Mustang is known for its trekking tours and mountain sightseeing. Elevated at an altitude of 3840 kilometres, this city is divided into two parts: Lower and Upper Mustang. Even though it is relatively unexplored, this city is a great destination for those who want to immerse in Tibetan culture as well as in Nepalese lifestyle as it is located near the Tibetan Plateau.\n"
          "\nLower Mustang is well-known for natural scenery while upper Mustang is famous for its trekking and hiking trails, monasteries, caves and local tribes. This destination is rich in vegetation with a range of rhododendron plantations, apple fields and is strong with Buddhist culture. Visitors get to see the lifestyle of the mountain people, their day-to-day routines and their customs. Visitors can take a look at a number of Tibetan shrines, monasteries, caves and villages in order to learn about the “Mini Tibet in Nepal”. All in all, this North-West part of Nepal has a rugged and mystical reputation and is a great destination for backpackers, trekkers or those who want a vacation away from the commercial life and want to spend some time in the Himalayas.",
    ),
    Destination(
      name: 'NAGARKOT',
      imageUrl: 'assets/NAGARKOT.jpg',
      imageUrl1: 'assets/NAGARKOT1.jpg',
      imageUrl2:  'assets/NAGARKOT2.jpg',
      imageUrl3: 'assets/NAGARKOT3.jpg',
      imageUrl4:  'assets/NAGARKOT4.jpg',
      imageUrl5:  'assets/NAGARKOT5.jpg',
      location: "Nagarkot, Nepal",
      price: "NPR 15000",
      details:
          "Located at a mere 28-kilometre drive away from Kathmandu, Nagarkot offers one of the best views of the Himalayas in the entire region as it has an altitude of 7000 feet (2000 metres)! Perched at the edge of Kathmandu Valley, Nagarkot gives you one of the widest panoramas of the Himalayan ranges - you can spot 8 out of the 13 Himalayan ranges from the comfort of your hotel. The mighty Annapurna, Manaslu, Langtang, Jugal, Everest, Numbur, Ganesh Himal and the Rolwaling ranges can be seen from Nagarkot on a clear day!\n"
          "\nAn erstwhile summer retreat of Nepali, Indian and British royalty, this village rose to fame after tourists thronged the area in recent years. The idyllic village sits serenely in the midst of nature - the only sounds you can hear are the birds chirping and the breeze whistling through the pines.\n"
          "\nOne great advantage of this viewpoint is the close proximity to the capital, which means that you can easily access Nagarkot from Kathmandu without spending too much time and money on travel. Accommodation is also cheap here, as is the food - Nagarkot clearly wins on all fronts!",
    ),
    Destination(
      name: 'PATAN',
      imageUrl: 'assets/PATAN.jpg',
      imageUrl1: 'assets/PATAN1.jpg',
      imageUrl2:  'assets/PATAN2.jpg',
      imageUrl3: 'assets/PATAN3.jpg',
      imageUrl4:  'assets/PATAN4.jpg',
      imageUrl5:  'assets/PATAN5.jpg',
      location: "Patan, Nepal",
      price: "NPR 5000",
      details:
          "Patan is the third-largest city in Nepal right after Kathmandu and Pokhara. It is presently known as Lalitpur. Both names are derived from the Sanskrit word ‘Lalitapattan’. The city is located just across the river Bagmati from Kathmandu. Patan has a Durbar Square that is full of statues, temples, and palaces. In addition, Durbar Square also has the ‘Patan museum’ which is a must-see attraction. It is a traditional centre for handicrafts and is also a place to purchase traditional jewellery, Buddha statues and masks.\n"
          "\nPatan was once an independent and a mighty kingdom of the Kathmandu Valley. It has now become a melting pot of two famous religions, Hinduism and Buddhism. A temple of the Hindu Lord Krishna rests right in the middle of the same town whose architecture has been dedicated to the Buddhist Dharma-Chakra (Wheel of Righteousness) philosophy. Its ancestral uniqueness is still moulded into Patan and this distinguishes Patan as a different atmosphere altogether in a short travel.",
    ),
    Destination(
      name: 'POKHARA',
      imageUrl: 'assets/POKHARA.jpg',
      imageUrl1: 'assets/POKHARA1.jpg',
      imageUrl2:  'assets/POKHARA2.jpg',
      imageUrl3: 'assets/POKHARA3.jpg',
      imageUrl4:  'assets/POKHARA4.jpg',
      imageUrl5:  'assets/POKHARA5.jpg',
      location: "Pokhara, Nepal",
      price: "NPR 25000",
      details:
          "Pokhara, the 'Tourist Capital of Nepal,' is the second-largest city in this Himalayan country, after Kathmandu. At an altitude of more than 900m, it is one of the highest cities, making it the base for many world-famous treks. The highlight of the town is its Lakeside, which is a boating paradise flanked with charming shops, dreamy cafés, restaurants and pubs that make up this postcard-perfect town.\n"
          "\nFor adventure enthusiasts, Pokhara is a popular starting point for many treks in the Annapurna Range as well as many paragliding and river rafting opportunities. You can take solo or tandem rides, depending on your expertise. River rafting and white water rafting are offered on Seti Gandaki and her tributaries.\n"
          "\nThe city is a beautiful contrast of the bustling Lakeside Pokhara and Old Pokhara, which is home to many beautiful historical temples and is also the city's commercial hub. Phewa Lake (or Phewa Tal), a spectacular lake that borders Lakeside Pokhara and Old Pokhara, it flawlessly reflects the mountains that border it, making it a breathtaking photo-op. The old city houses shops where you can buy famous handicrafts, woodwork and woolwork. Don't forget to visit the Tibetan Mini Market for one-of-a-kind souvenirs!",
    ),
  ];

  List<Destination> _searchResults = [];

  void _toggleLike(Destination destination) {
    setState(() {
      destination.isLiked = !destination.isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.amber,
                  Color.fromARGB(201, 177, 91, 85)
                ]),
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu_open,
                size: 35,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: Colors.amber,
        title: Text(
          'Travel Nepal',
          
          style: TextStyle(
          
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        //   actions: [
        //   IconButton(
        //     icon: Icon(
        //       Icons.lightbulb_outline,
        //       color: Theme.of(context).accentColor,
        //     ),
        //     onPressed:(() => )
        //   ),
        // ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 200,
              child: DrawerHeader(
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 8.0,
                      left: 4.0,
                      child: Text(
                        "Travel Nepal",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage(
                      "CHITLANG.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.amber,
              ),
              title: Text("Home"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DestinationsScreen()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.amber,
              ),
              title: Text("Favourites"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FavoriteDestinationsScreen(
                        destinations:
                            _destinations.where((d) => d.isLiked).toList())));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_box,
                color: Colors.amber,
              ),
              title: Text("About us"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AboutUsPage()));
              },
            ),
           
           
          ],
        ),
      ),
      body: SingleChildScrollView(
      
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(children: [
                Blur(
                  blur: 0.6,
                  blurColor: Color.fromARGB(255, 236, 120, 91),
                  child: Image.network(
                    'https://ling-app.com/wp-content/uploads/2022/01/Nepal-Architecture-3-1.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 35.0, right: 20, top: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search destinations',
                      hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 249, 249, 247)),
                          borderRadius: BorderRadius.circular(25)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color.fromARGB(184, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(25) //<-- SEE HERE
                          ),
                    ),
                    onChanged: (query) {
                      setState(() {
                        _searchResults = _destinations
                            .where((destination) => destination.name
                                .toLowerCase()
                                .contains(query.toLowerCase()))
                            .toList();
                      });
                    },
                  ),
                ),
                Positioned(
                    bottom: 40,
                    left: 40,
                    child: Row(
                      children: [
                        Text(
                          'Explore Nepal',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 25,
                            child: Image.network('assets/nepal.gif')),
                      ],
                    ))
              ]),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Destinations',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Divider(color: Colors.amber),
              ),
              SizedBox(
                height: 10,
              ),

              ///horizontal display destination
              Container(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _searchResults.isEmpty
                      ? _destinations.length
                      : _searchResults.length,
                  itemBuilder: (context, index) {
                    final destination = _searchResults.isEmpty
                        ? _destinations[index]
                        : _searchResults[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DestinationDetailScreen(
                                destination: destination),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Stack(
                            children: [
                              Image.network(
                                destination.imageUrl,
                                fit: BoxFit.fill,
                              ),
                              Positioned(
                                bottom: 20,
                                left: 10,
                                child: Column(
                                  children: [
                                    Text(
                                      destination.name,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 27),
                                    ),
                                    Text(destination.location,
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),

              /// Vertical display
              Expanded(
                child: ListView.builder(
                  //scrollDirection: Axis.vertical,
                  itemCount: _searchResults.isEmpty
                      ? _destinations.length
                      : _searchResults.length,
                  itemBuilder: (context, index) {
                    final destination = _searchResults.isEmpty
                        ? _destinations[index]
                        : _searchResults[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DestinationDetailScreen(
                                destination: destination),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Card(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.network(
                                  destination.imageUrl,
                                  width: 180,
                                  height: 120,
                                ),
                                // SizedBox(width: 20,),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        destination.name,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 12,
                                            color: Colors.blue,
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            destination.location,
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color.fromARGB(
                                                    255, 108, 103, 103)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        destination.price,
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    destination.isLiked
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color:
                                        destination.isLiked ? Colors.red : null,
                                  ),
                                  onPressed: () => _toggleLike(destination),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FavoriteDestinationsScreen(
                  destinations: _destinations.where((d) => d.isLiked).toList()),
            ),
          );
        },
        child: Icon(Icons.favorite),
      ),
        
    );
    
  }
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   bool onboardingCompleted = prefs.getBool('onboardingCompleted') ?? false;

//   runApp(MyApp(
//     prefs: prefs,
//     onboardingCompleted: onboardingCompleted,
//   ));
// }

// class MyApp extends StatefulWidget {
//   final SharedPreferences prefs;
//   final bool onboardingCompleted;

//   MyApp({required this.prefs, required this.onboardingCompleted});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {


//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//     debugShowCheckedModeBanner: false,
    
//       theme: ThemeData.light(),
//       darkTheme: ThemeData.dark(),
//       home: DestinationsScreen(
       
//       ),
//     );
//   }
// }


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool onboardingCompleted = prefs.getBool('onboardingCompleted') ?? false;

  runApp(MyApp(
    prefs: prefs,
    onboardingCompleted: onboardingCompleted,
  ));
}

class MyApp extends StatelessWidget {

  final SharedPreferences prefs;
  final bool onboardingCompleted;

  MyApp({required this.prefs, required this.onboardingCompleted});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Travel Nepal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: onboardingCompleted ? DestinationsScreen() : WelcomePage(prefs: prefs),
    );
  }
}

