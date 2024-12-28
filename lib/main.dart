import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeeklyExpenseChart(),
    );
  }
}

class WeeklyExpenseChart extends StatelessWidget {
  const WeeklyExpenseChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                const Text(
                  'Weekly Expense',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('View Report'),
                ),
              ],
            ),
            const Text(
              'From 1 - 6 Apr, 2024',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 20),
            Stack(
              children: [
                Circle(48),
                Positioned(
                  top: 48,
                  left: 48,
                  child: Circle(32),
                ),
                Positioned(
                  top: 48,
                  right: 48,
                  child: Circle(13),
                ),
                Positioned(
                  top: 93,
                  left: 93,
                  child: Circle(7),
                ),
              ],
            ),
            SizedBox(
              height: 200,
              child: Center()
            ),
            const SizedBox(height: 20),
            Row(
              children: [Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),), Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),)],
            ),
            // Legend
            Row(children: [ _buildLegendItem('Grocery', '\$758.20', Colors.purple.shade200),
            Spacer(),
            _buildLegendItem('Food & Drink', '\$758.20', Colors.green.shade100),
            ],),
            Row(
              children: [Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),), Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),),Text("-", style: TextStyle(fontSize: 30, color: Colors.grey.shade500),)],

            ),
            Row(children: [_buildLegendItem('Shopping', '\$758.20', Colors.red.shade100),
            Spacer(),_buildLegendItem('Transportation', '\$758.20', Colors.orange.shade100),
          ],)
            ],
        ),
      ),
    );
  }

  Widget _buildLegendItem(String title, String amount, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 15,),
          Text(
            title,
            style: TextStyle(
              color: title == 'Grocery' ? Colors.purple : 
                     title == 'Food & Drink' ? Colors.green :
                     title == 'Shopping' ? Colors.red :
                     Colors.orange,
            ),
          ),
            ],
          ),
          
          Row(children: [
            SizedBox(width: 27,),
            Text(
            amount,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          ],)
        ],
      ),
    );
  }

  Widget Circle (int radius) {
    final color_list = {
      48: Colors.purple.shade200,
       32: Colors.green.shade100,
        13: Colors.red.shade100,
         7: Colors.orange.shade100
    };
    return Container(
      width: radius * 5,
      height: radius * 5,
      decoration: BoxDecoration(
        color: color_list[radius],
        shape: BoxShape.circle,
      ),
      child: Center(child: Text("$radius", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: color_list[radius]),)),
    );
  }
}