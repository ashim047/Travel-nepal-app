import 'package:flutter/material.dart';


class AboutUsPage extends StatefulWidget {
  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
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
        title: Text(
          'About us',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body:
          

          SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Travel Nepal',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),),
              ),  
               Padding(
                    padding: const EdgeInsets.only(left: 3.0, right: 8),
                    child: Divider(color: Colors.amber),
                  ),
                  SizedBox(
                    height: 10,
                  ),
              SizedBox(height: 16.0),
              Text(
                'Welcome to Travel app',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'We are a team of passionate developers who specialize in creating high-quality mobile apps using Flutter. Our mission is to help our clients achieve their business goals by providing them with innovative and reliable solutions.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Our values',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.lightbulb_outline),
                      SizedBox(height: 8.0),
                      Text('Innovation'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.accessibility),
                      SizedBox(height: 8.0),
                      Text('Accessibility'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.group),
                      SizedBox(height: 8.0),
                      Text('Collaboration'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 36.0),
              Text(
                'Get in touch',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'If you have any questions or would like to learn more about our services, please feel free to contact us:',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 40.0),
              Row(
                children: [
                  Icon(Icons.email),
                  SizedBox(width: 8.0),
                  Text(
                    'Ankitjaiswal@gmail.com.com',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 8.0),
                  Text(
                    '+9779841010101',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
               SizedBox(height: 8.0),
              Row(
                children: [
                  Icon(Icons.facebook,size: 30,),
                  SizedBox(width: 8.0),
                  Text(
                    'Ankit Jaiswal',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              
              SizedBox(height: 120.0),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '© 2023. All rights reserved.',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
