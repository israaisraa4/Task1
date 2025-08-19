import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      home: Scaffold(
        backgroundColor: const Color(0xFFFFD99C),
        // appBar: AppBar(
        //   title: const Text('تفاصيل الوصفة'),
        //   backgroundColor: Colors.amberAccent,
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "وصفة بيتزا الدجاج",
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/pizza.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 20),
                   Text(
                      '''
مكونات العجينة
كوب دقيق
كوب ماء دافئ
ملعقة كبيرة سكر
ملعقة كبيرة خميرة فورية جافة
ملعقة كبيرة زيت نباتي
ملعقة صغيرة ملح
''',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        height: 1.6,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.right,
                    ),
                
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Icon(Icons.restaurant, color: Colors.black, size: 30),
                    const SizedBox(height: 4),
                    Text("٦-٨ أشخاص"),
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.access_time,
                      color: Colors.black,
                      size: 30,
                    ),
                    const SizedBox(height: 4),
                    Text("١ ساعة"),
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.local_restaurant_sharp,
                      color: Colors.black,
                      size: 30,
                    ),
                    const SizedBox(height: 4),
                    Text("٢٥ دقيقة"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
