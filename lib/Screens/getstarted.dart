


import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class WelcomePage extends StatelessWidget {
  final SharedPreferences prefs;

  WelcomePage({required this.prefs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://media.istockphoto.com/id/505303492/vector/climbers-climb-the-mountain-vector-illustration.jpg?s=612x612&w=0&k=20&c=OZ9p1jRlt_iC6zbYM-zyl5CIfv8z7cX30Wi2CT9wTv8='),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
          
            children: [
            
             
             SizedBox(height: 44),
              Text(
                'Welcome to Travel Nepal',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 550),
              Container(
              
              height: 40,
              width: 120,
              
               decoration: BoxDecoration(
               color: Colors.amberAccent,
               borderRadius: BorderRadius.circular(11)),
                child: Center(
                child: TextButton(onPressed:  () {
                prefs.setBool('onboardingCompleted', true);
                Navigator.pushReplacement(
                    context,
                MaterialPageRoute(builder: (context) => InformationPage(prefs: prefs),));
                }, child: Text('Next',style: TextStyle(
                  
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),))
                 ),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  prefs.setBool('onboardingCompleted', true);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DestinationsScreen(),
                    ),
                  );
                },
                child: Text(
                
                
                  'Skip',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InformationPage extends StatelessWidget {
  final SharedPreferences prefs;

  InformationPage({required this.prefs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://images.unsplash.com/photo-1616716343504-e2f71a52f809?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8&w=1000&q=80'),
            fit: BoxFit.cover,
          
          ),
          ),
        
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            
              SizedBox(height: 44),
              Column(
                children: [
                  Text(
                    'Plan Your Trip',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                    
                  ),
                  SizedBox(height: 10,),
                   Center(
                     child: Text(
                      'Make the most of your adventure and\n create memories that will \nlast a lifetime',
                      style: TextStyle(
                        fontSize: 16,
                     color: Color.fromARGB(255, 222, 227, 229),
                      ),
                  ),
                   ),
                ],
              ),
              SizedBox(height: 520),
              Container(
              
              height: 40,
              width: 120,
              
               decoration: BoxDecoration(
               color: Colors.amberAccent,
               borderRadius: BorderRadius.circular(11)),
                child: Center(
                child: TextButton(onPressed:  () {
                prefs.setBool('onboardingCompleted', true);
                Navigator.pushReplacement(
                    context,
                MaterialPageRoute(builder: (context) => GetStartedPage(prefs: prefs),));
                }, child: Text('Next',style: TextStyle(
                  
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),))
                 ),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  prefs.setBool('onboardingCompleted', true);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DestinationsScreen(),
                    ),
                  );
                },
                child: Text(
                  'Skip',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GetStartedPage extends StatelessWidget {
  final SharedPreferences prefs;

  GetStartedPage({required this.prefs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://t3.ftcdn.net/jpg/02/68/28/12/360_F_268281279_1hetTCOn6ehfLqYxbXnSTGtoL2mB7Otz.jpg'),
            fit: BoxFit.cover,
          
          ),
          ),
        
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            
              SizedBox(height: 44),
              Column(
                children: [
                  Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                    
                  ),
                  SizedBox(height: 10,),
                   Center(
                     child: Text(
                      'Browse through the app for\n different travel Destination',
                      style: TextStyle(
                        fontSize: 16,
                     
                        color: Color.fromARGB(255, 175, 187, 193),
                      ),
                  ),
                   ),
                ],
              ),
              SizedBox(height: 540),
              Container(
              
              height: 40,
              width: 120,
              
               decoration: BoxDecoration(
               color: Colors.amberAccent,
               borderRadius: BorderRadius.circular(11)),
                child: Center(
                child: TextButton(onPressed:  () {
                prefs.setBool('onboardingCompleted', true);
                Navigator.pushReplacement(
                    context,
                MaterialPageRoute(builder: (context) => DestinationsScreen(),));
                }, child: Text('Get Started',style: TextStyle(
                  
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),))
                 ),
              ),
              SizedBox(height: 16),
              // TextButton(
              //   onPressed: () {
              //     prefs.setBool('onboardingCompleted', true);
              //     Navigator.pushReplacement(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => DestinationsScreen(),
              //       ),
              //     );
              //   },
              //   child: Text(
              //     'Skip',
              //     style: TextStyle(color: Colors.white),
              //   ),
              // ),
            ],
          ),
        ),
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

// class MyApp extends StatelessWidget {

//   final SharedPreferences prefs;
//   final bool onboardingCompleted;

//   MyApp({required this.prefs, required this.onboardingCompleted});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'MyApp',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: onboardingCompleted ? DestinationsScreen() : WelcomePage(prefs: prefs),
//     );
//   }
// }
