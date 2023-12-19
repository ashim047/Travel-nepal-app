
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../main.dart';

///Details screen

class DestinationDetailScreen extends StatefulWidget {
  final Destination destination;

  DestinationDetailScreen({required this.destination});

  @override
  State<DestinationDetailScreen> createState() =>
      _DestinationDetailScreenState();
}


late  PageController _pageController = PageController(viewportFraction: 0.8,initialPage: 1);



class _DestinationDetailScreenState extends State<DestinationDetailScreen> {
  void _toggleLike(Destination destination) {
    setState(() {
      destination.isLiked = !destination.isLiked;
    });
  }
List<String> _images = [
 

  ];
   @override
  void initState() {
    super.initState();
    _images.add(widget.destination.imageUrl);
    _images.add(widget.destination.imageUrl1);
    _images.add(widget.destination.imageUrl2);
     _images.add(widget.destination.imageUrl3);
      _images.add(widget.destination.imageUrl4);
       _images.add(widget.destination.imageUrl5);
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
        backgroundColor: Colors.amber,
        title: Text(widget.destination.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
           
 Column(
      children: [
        SizedBox(
          height: 300,
          child
              : CarouselSlider(
                  options: CarouselOptions(
                    height: 280.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                  items: _images.map((image) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          child:
                              Image.network(image, fit: BoxFit.fill),
                        );
                      },
                    );
                  }).toList(),
                ),
        ),
        
      ],
    )
,










    
              /////
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.destination.name,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        Text(
                          widget.destination.location,
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 108, 103, 103)),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.location_on,
                          size: 16,
                          color: Color.fromARGB(255, 33, 236, 243),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(
                            widget.destination.isLiked
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: widget.destination.isLiked ? Colors.red : null,
                          ),
                          onPressed: () => _toggleLike(widget.destination),
                        ),
                      ],
                    ),
                    Text(
                      widget.destination.price,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
           
                Text(
                  "Details",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
             maxLines: 1,
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        "${widget.destination.details}",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}


