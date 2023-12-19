
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'Details.dart';

class FavoriteDestinationsScreen extends StatefulWidget {
  final List<Destination> destinations;

  FavoriteDestinationsScreen({required this.destinations});

  @override
  State<FavoriteDestinationsScreen> createState() => _FavoriteDestinationsScreenState();
}

class _FavoriteDestinationsScreenState extends State<FavoriteDestinationsScreen> {
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
          colors: <Color>[ Colors.amber,Color.fromARGB(201, 177, 91, 85)]),
      ),
    ),
     
        backgroundColor: Colors.amber,
        
        title: Text('Favourites', style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),),
      ),


      body: ListView.builder(
        itemCount: widget.destinations.length,
        itemBuilder: (context, index) {
       
          
         final destination = widget.destinations[index];
       
           return  GestureDetector(
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
        
       } 
      )
    );
  }
}