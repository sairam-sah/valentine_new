
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _opacity = 0.0;

  var lottielist = [
    "https://lottie.host/8b36e7e0-ee0d-437d-b45f-6ea2cb4e627f/XbKsN4Lcmb.json",
    "https://lottie.host/769aaf4e-7459-42a1-9cf7-9f910ab4c786/zgA3CMrmvs.json",
    "https://lottie.host/13cd4b24-a264-4f1b-bc13-8a1d0d13d09c/153UPk4Pm1.json",
    "https://lottie.host/11f96630-e9de-451b-8b4c-68f4d8c5f821/9ktSpFTWox.json",
    "https://lottie.host/8dc7f583-1628-4591-8ca4-6edec465e474/X2IRexLD9a.json",
    "https://lottie.host/ed4744e5-a796-4d8a-bef6-772d2b5439b9/MOTFh1eQB9.json",
    "https://lottie.host/c1bab8c3-da02-491a-a432-912192633f33/NTv0Dl6gx4.json",
    "https://lottie.host/6bec0904-7582-4aa2-9867-ef3dc1fe6da5/67uK3veIOs.json"
  ];

  var textlist =[
    "Happy Rose Day",
    "Propose Day",
    "Chocolate Day",
    "Teddy Day",
    "Promise Day",
    "Kiss Day",
    "Hug Day",
    "Happy Valentine Day"
    ];


  var currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 100,
            left: 20,
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
              onPressed: () {
                setState(() {


                  var a;
                  if (currentIndex != 0) {
                    currentIndex--;
                  }
                });
              },
              child: const Text('Pre'),
            ),
          ),
          Positioned(
            top: 100,
            left: 280,
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
              onPressed: () {
                setState(() {
                if (currentIndex != 7) {
                  currentIndex++;
                }
                  
                });
              },
              child: const Text('Next'),
            ),
          ),
          Positioned(
            top: 100,
            left: 150,
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
              onPressed: () {
                setState(() {
                  var curr = DateTime.now();
                  switch (curr.day) {
                    case 7:{
                      setState(() {
                        currentIndex = 0;
                      });
                      break;
                    }
                    case 8:{
                      setState(() {
                        currentIndex = 1;
                      });
                      break;
                    }
                    case 9:{
                      setState(() {
                        currentIndex = 2;
                      });
                      break;
                    }
                    case 10:{
                      setState(() {
                        currentIndex = 3;
                      });
                      break;
                    }
                    case 11:{
                      setState(() {
                        currentIndex = 4;
                      });
                      break;
                    }
                    case 12:{
                      setState(() {
                        currentIndex = 5;
                      });
                      break;
                    }
                    case 13:{
                      setState(() {
                        currentIndex = 6;
                      });
                      break;
                    }
                    case 14:{
                      setState(() {
                        currentIndex = 7;
                      });
                      break;
                    }

                    
                    default:
                  }
                });
              },
              child: const Text('Today'),
            ),
          ),
          Center(
              child: AnimatedOpacity(
            opacity: _opacity,
            duration: const Duration(milliseconds: 500),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.network(lottielist[currentIndex],
                    height: 350, width: 350),
              ],
            ),
          )),Positioned(
            bottom: 150,
            left: 70,
            child:
                Text(textlist[currentIndex],
                style:  const TextStyle(fontSize: 30,
                fontWeight:FontWeight.bold,
                color:Colors.red),
                ),
                
              
          ),
        ],
      ),
    );
  }
}
