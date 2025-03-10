// Fadhila Alya Syahfahlevi | 2211102195
import 'package:flutter/material.dart';
import 'tutorial_3-1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout part 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Layout part 1'),
      debugShowCheckedModeBanner: false,
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
  final data = const [
    {"tgl": "02/03/2022", "nilai": "150"},
    {"tgl": "02/03/2022", "nilai": "150"},
    {"tgl": "02/03/2022", "nilai": "150"},
    {"tgl": "02/03/2022", "nilai": "150"},
    {"tgl": "02/03/2022", "nilai": "150"},
    {"tgl": "02/03/2022", "nilai": "150"},
    {"tgl": "02/03/2022", "nilai": "150"},
    {"tgl": "02/03/2022", "nilai": "150"},
    {"tgl": "02/03/2022", "nilai": "150"},
    {"tgl": "02/03/2022", "nilai": "150"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                              "Welcome, ",
                              style: TextStyle(
                              color: Color(0xFF7367F0),
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.25,
                          )
                        ),
                          Text(
                              "2211102195 - Fadhila Alya Syahfahlevi",
                              style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF4B4B4B),
                          ),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 20,
                    ),
                  ],
                )
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 35),
                decoration: BoxDecoration(
                  gradient: 
                  const LinearGradient(
                    colors: [Color(0xFF4839EB), Color(0XFF7367F0)]
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 8),
                    Text(
                      'Status tes TOEFL Anda: ',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "LULUS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.25
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Listening\n        80',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            'Structure\n        80',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            'Reading\n        90',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Container(
                child: Text('Riwayat Tes',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.25,
                ))
              ),
              Container(
                height: 300,
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Tanggal tes:\nNilai:',
                              style: TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                            Text(
                              data[index]["tgl"]! + '\n' +data[index]["nilai"]!,
                              style: const TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                          ]
                        ),
                        SizedBox(height: 10)
                      ],
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                child: InkWell(
                  child: Text('Go to tutorial_3-1', style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 26)
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const MyApp3_1()
                      ));
                  }
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
